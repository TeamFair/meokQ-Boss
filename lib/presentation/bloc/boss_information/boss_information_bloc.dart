import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/core/config/const.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/domain/repository/image_picker/interface_image_picker.dart';
import 'package:meokq_boss/domain/usecase/boss_apply_use_case.dart';

part 'boss_information_state.dart';
part 'boss_information_event.dart';

class BossInformationBloc
    extends Bloc<BossInformationEvent, BossInformationState> {
  BossInformationBloc() : super(BossInformationState.init()) {
    on<ChangeBusinessNumber>(_changeBusinessNumber);
    on<ChangeBossName>(_changeBossName);
    on<ChangeBussinessType>(_changeBusinessType);
    on<ChangeStoreName>(_changeStoreName);
    on<ChangeAddress>(_changeAddress);
    on<ChangePostalCode>(_changePostalCode);
    on<ChangeUserName>(_changeUserName);
    on<ChangeBirth>(_changeBirth);
    on<AddImage>(_addImage);
    on<ChangeStage>(_changeStage);
    on<WritingCompleted>(_writingCompleted);
  }

  final _imagePickerRepository = getIt<InterfaceImagePicker>();

  void _changeBusinessNumber(
    ChangeBusinessNumber event,
    Emitter<BossInformationState> emit,
  ) {
    emit(
      state.copyWith(
        businessNumber: event.newText,
      ),
    );
  }

  void _changeBossName(
    ChangeBossName event,
    Emitter<BossInformationState> emit,
  ) {
    emit(
      state.copyWith(
        bossName: event.newText,
      ),
    );
  }

  void _changeStoreName(
    ChangeStoreName event,
    Emitter<BossInformationState> emit,
  ) {
    emit(
      state.copyWith(
        storeName: event.newText,
      ),
    );
  }

  void _changeAddress(
    ChangeAddress event,
    Emitter<BossInformationState> emit,
  ) {
    emit(
      state.copyWith(
        address: event.newText,
      ),
    );
  }

  void _changePostalCode(
    ChangePostalCode event,
    Emitter<BossInformationState> emit,
  ) {
    emit(
      state.copyWith(
        postalCode: event.newText,
      ),
    );
  }

  void _changeUserName(
    ChangeUserName event,
    Emitter<BossInformationState> emit,
  ) {
    emit(
      state.copyWith(
        userName: event.newText,
      ),
    );
  }

  void _changeBirth(
    ChangeBirth event,
    Emitter<BossInformationState> emit,
  ) {
    emit(
      state.copyWith(
        birth: event.newText,
      ),
    );
  }

  void _changeBusinessType(
    ChangeBussinessType event,
    Emitter<BossInformationState> emit,
  ) {
    emit(
      state.copyWith(
        businessType: event.businessType,
      ),
    );
  }

  Future<void> _addImage(
    AddImage event,
    Emitter<BossInformationState> emit,
  ) async {
    switch (event.imageType) {
      case ImageType.businessCertification:
        switch (event.imagePicker) {
          case ImagePicker.gallery:
            final imagePath =
                await _imagePickerRepository.getImageFromGallery();
            emit(
              state.copyWith(
                businessCertificationUrl: imagePath,
              ),
            );
          case ImagePicker.camera:
            final imagePath = await _imagePickerRepository.getImageFromCamera();
            emit(
              state.copyWith(
                businessCertificationUrl: imagePath,
              ),
            );
        }
      case ImageType.identification:
        switch (event.imagePicker) {
          case ImagePicker.gallery:
            final imagePath =
                await _imagePickerRepository.getImageFromGallery();
            emit(
              state.copyWith(
                identificationUrl: imagePath,
              ),
            );
          case ImagePicker.camera:
            final imagePath = await _imagePickerRepository.getImageFromCamera();
            emit(
              state.copyWith(
                identificationUrl: imagePath,
              ),
            );
        }
    }
  }

  void _changeStage(
    ChangeStage event,
    Emitter<BossInformationState> emit,
  ) {
    emit(
      state.copyWith(
        stage: event.stage,
      ),
    );
  }

  Future<void> _writingCompleted(
    WritingCompleted event,
    Emitter<BossInformationState> emit,
  ) async {
    final usecase = await BossApplyUseCase().call(
      BossApplyInput(
        businessNumber: state.businessNumber,
        businessType: state.businessType,
        bossName: state.bossName,
        storeName: state.storeName,
        address: state.address,
        postalCode: state.postalCode,
        birth: state.birth,
        businessCertificationUrl: state.businessCertificationUrl,
        identificationUrl: state.identificationUrl,
        userName: state.userName,
      ),
    );

    emit(
      state.copyWith(
        applyState: usecase.fold(
          (l) => ApplyState.failed,
          (r) => ApplyState.success,
        ),
      ),
    );
  }
}
