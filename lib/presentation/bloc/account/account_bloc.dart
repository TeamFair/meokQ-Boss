import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/data/model/my_information/my_information.dart';
import 'package:meokq_boss/domain/repository/image_picker/interface_image_picker.dart';
import 'package:meokq_boss/domain/usecase/get_account_use_case.dart';
import 'package:meokq_boss/domain/usecase/post_account_use_case.dart';

part 'account_state.dart';
part 'account_event.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc() : super(AccountState.init()) {
    on<ChangeText>(_changeText);
    on<ChangeLogo>(_changeLogo);
    on<EditButtonClicked>(_editButtonClicked);
    on<InitMyInformation>(_initMyInformationState);
  }

  final _imagePickerRepository = getIt<InterfaceImagePicker>();

  Future<void> _initMyInformationState(
    InitMyInformation event,
    Emitter<AccountState> emit,
  ) async {
    final usecase = await GetAccountUseCase().call(GetAccountInput());

    usecase.fold(
      (l) => null,
      (r) => emit(
        state.copyWith(
          myInformation: r.myInformation,
        ),
      ),
    );
  }

  void _changeText(
    ChangeText event,
    Emitter<AccountState> emit,
  ) {
    switch (event.textType) {
      case TextType.address:
        emit(
          state.copyWith(
            myInformation: state.myInformation.copyWith(
              address: event.newText,
            ),
          ),
        );
      case TextType.phone:
        emit(
          state.copyWith(
            myInformation: state.myInformation.copyWith(
              phone: event.newText,
            ),
          ),
        );
    }
  }

  Future<void> _changeLogo(
    ChangeLogo event,
    Emitter<AccountState> emit,
  ) async {
    final imagePath = await _imagePickerRepository.getImageFromGallery();
    emit(
      state.copyWith(
        myInformation: state.myInformation.copyWith(
          changedLogoUrl: imagePath,
        ),
      ),
    );
  }

  Future<void> _editButtonClicked(
    EditButtonClicked event,
    Emitter<AccountState> emit,
  ) async {
    if (state.editClicked) {
      await PostAccountUseCase().call(
        PostAccountInput(
          phone: state.myInformation.phone,
          address: state.myInformation.address,
          logoImageUrl: state.myInformation.changedLogoUrl.isEmpty
              ? null
              : state.myInformation.changedLogoUrl,
        ),
      );

      emit(
        state.copyWith(
          editClicked: !state.editClicked,
        ),
      );
    } else {
      emit(
        state.copyWith(
          editClicked: !state.editClicked,
        ),
      );
    }
  }
}
