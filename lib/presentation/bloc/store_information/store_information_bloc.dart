import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/domain/repository/image_picker/interface_image_picker.dart';

part 'store_information_state.dart';
part 'store_information_event.dart';

class StoreInformationBloc
    extends Bloc<StoreInformationEvent, StoreInformationState> {
  StoreInformationBloc() : super(StoreInformationState.init()) {
    on<ChangeStore>(_changeStore);
    on<ChangeAddress>(_changeAddress);
    on<ChangePhone>(_changePhone);
    on<ChangeBussinessHour>(_changeBussinessHour);
    on<ChangeBussinessDays>(_changeBussinessDays);
    on<AddImageFromGallery>(_addImageFromGallery);
    on<AddImageFromCamera>(_addImageFromCamera);
    on<ChangeStage>(_changeStage);
    on<StoreApply>(_storeApply);
  }

  final _imagePickerRepository = getIt<InterfaceImagePicker>();

  void _changeStore(
    ChangeStore event,
    Emitter<StoreInformationState> emit,
  ) {
    emit(
      state.copyWith(
        storeName: event.newText,
      ),
    );
  }

  void _changeAddress(
    ChangeAddress event,
    Emitter<StoreInformationState> emit,
  ) {
    emit(
      state.copyWith(
        address: event.newText,
      ),
    );
  }

  void _changePhone(
    ChangePhone event,
    Emitter<StoreInformationState> emit,
  ) {
    emit(
      state.copyWith(
        phone: event.newText,
      ),
    );
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
    var businessDays = state.businessDays;

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

  Future<void> _addImageFromGallery(
    AddImageFromGallery event,
    Emitter<StoreInformationState> emit,
  ) async {
    final imagePath = await _imagePickerRepository.getImageFromGallery();
    emit(
      state.copyWith(
        logoUrl: imagePath,
      ),
    );
  }

  Future<void> _addImageFromCamera(
    AddImageFromCamera event,
    Emitter<StoreInformationState> emit,
  ) async {
    final imagePath = await _imagePickerRepository.getImageFromCamera();
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
