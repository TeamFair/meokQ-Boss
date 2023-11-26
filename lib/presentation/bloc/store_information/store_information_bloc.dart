import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/domain/repository/image_picker/interface_image_picker.dart';

part 'store_information_state.dart';
part 'store_information_event.dart';

class StoreInformationBloc
    extends Bloc<StoreInformationEvent, StoreInformationState> {
  StoreInformationBloc() : super(StoreInformationState.init()) {
    on<ChangeTextField>(_changeTextField);
    on<ChangeBussinessHour>(_changeBussinessHour);
    on<ChangeBussinessDays>(_changeBussinessDays);
    on<AddImage>(_addImage);
    on<ChangeStage>(_changeStage);
    on<StoreApply>(_storeApply);
  }

  final _imagePickerRepository = getIt<InterfaceImagePicker>();

  void _changeTextField(
    ChangeTextField event,
    Emitter<StoreInformationState> emit,
  ) {
    switch (event.storeTextInputType) {
      case StoreTextInputType.storeName:
        emit(
          state.copyWith(
            storeName: event.newText,
          ),
        );
      case StoreTextInputType.address:
        emit(
          state.copyWith(
            address: event.newText,
          ),
        );
      case StoreTextInputType.phone:
        emit(
          state.copyWith(
            phone: event.newText,
          ),
        );
    }
  }

  void _changeBussinessHour(
    ChangeBussinessHour event,
    Emitter<StoreInformationState> emit,
  ) {
    switch (event.businessHour) {
      case BusinessHour.open:
        emit(
          state.copyWith(
            open: event.time,
          ),
        );
      case BusinessHour.close:
        emit(
          state.copyWith(
            close: event.time,
          ),
        );
    }
  }

  void _changeBussinessDays(
    ChangeBussinessDays event,
    Emitter<StoreInformationState> emit,
  ) {
    var businessDays = <String>[];
    for (String s in state.businessDays) {
      businessDays.add(s);
    }

    if (businessDays.contains(event.day)) {
      businessDays.remove(event.day);
    } else {
      businessDays.add(event.day);
    }
    emit(
      state.copyWith(
        businessDays: businessDays,
      ),
    );
  }

  void _changeStage(
    ChangeStage event,
    Emitter<StoreInformationState> emit,
  ) {
    emit(
      state.copyWith(
        stage: event.stage,
      ),
    );
  }

  Future<void> _addImage(
    AddImage event,
    Emitter<StoreInformationState> emit,
  ) async {
    final imagePath = await _imagePickerRepository.getImageFromGallery();
    emit(
      state.copyWith(
        logoUrl: imagePath,
      ),
    );
  }

  Future<void> _storeApply(
    StoreApply event,
    Emitter<StoreInformationState> emit,
  ) async {
    // TODO: API 연결
  }
}
