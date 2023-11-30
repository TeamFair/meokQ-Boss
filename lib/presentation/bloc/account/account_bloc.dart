import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/data/model/my_information/my_information.dart';
import 'package:meokq_boss/domain/repository/image_picker/interface_image_picker.dart';

part 'account_state.dart';
part 'account_event.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc() : super(AccountState.init()) {
    on<ChangeText>(_changeText);
    on<ChangeBussinessHour>(_changeBusinessHour);
    on<ChangeBusinessDays>(_changeBusinessDays);
    on<ChangeLogo>(_changeLogo);
    on<ChangeAccount>(_changeAccount);
    on<EditButtonClicked>(_editButtonClicked);
    on<InitMyInformation>(_initMyInformationState);
  }

  final _imagePickerRepository = getIt<InterfaceImagePicker>();

  void _initMyInformationState(
    InitMyInformation event,
    Emitter<AccountState> emit,
  ) {
    const myInformation = MyInformation(
      logoUrl: '',
      questCount: 3,
      ticketAccount: 40,
      address: '경기도 안양시 만안구 안양동 88-1',
      businessDays: ['월', '화', '수', '목', '금'],
      open: '오전 9:00',
      close: '오후 10:30',
      phone: '02-123-4567',
    );

    emit(
      state.copyWith(
        myInformation: myInformation,
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
              address: event.newText,
            ),
          ),
        );
    }
  }

  void _changeBusinessHour(
    ChangeBussinessHour event,
    Emitter<AccountState> emit,
  ) {
    switch (event.businessHour) {
      case BusinessHour.open:
        emit(
          state.copyWith(
            myInformation: state.myInformation.copyWith(
              address: event.hour,
            ),
          ),
        );
      case BusinessHour.close:
        emit(
          state.copyWith(
            myInformation: state.myInformation.copyWith(
              address: event.hour,
            ),
          ),
        );
    }
  }

  void _changeBusinessDays(
    ChangeBusinessDays event,
    Emitter<AccountState> emit,
  ) {
    var businessDays = <String>[];
    for (String s in state.myInformation.businessDays) {
      businessDays.add(s);
    }

    if (businessDays.contains(event.day)) {
      businessDays.remove(event.day);
    } else {
      businessDays.add(event.day);
    }
    emit(
      state.copyWith(
        myInformation: state.myInformation.copyWith(
          businessDays: businessDays,
        ),
      ),
    );
  }

  Future<void> _changeLogo(
    ChangeLogo event,
    Emitter<AccountState> emit,
  ) async {
    final imagePath = await _imagePickerRepository.getImageFromGallery();
    emit(
      state.copyWith(
        myInformation: state.myInformation.copyWith(
          logoUrl: imagePath,
        ),
      ),
    );
  }

  void _editButtonClicked(
    EditButtonClicked event,
    Emitter<AccountState> emit,
  ) {
    emit(
      state.copyWith(
        editClicked: !state.editClicked,
      ),
    );
  }

  Future<void> _changeAccount(
    ChangeAccount event,
    Emitter<AccountState> emit,
  ) async {
    // TODO: apply account
  }
}
