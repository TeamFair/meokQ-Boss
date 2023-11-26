import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/core/config/const.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/domain/repository/image_picker/interface_image_picker.dart';

part 'boss_information_state.dart';
part 'boss_information_event.dart';

class BossInformationBloc
    extends Bloc<BossInformationEvent, BossInformationState> {
  BossInformationBloc() : super(BossInformationState.init()) {
    on<ChangeTextField>(_changeTextField);
    on<ChangeBussinessType>(_changeBussinessType);
    on<AddImage>(_addImage);
    on<ChangeStage>(_changeStage);
    on<WritingCompleted>(_writingCompleted);
  }

  final _imagePickerRepository = getIt<InterfaceImagePicker>();

  void _changeTextField(
    ChangeTextField event,
    Emitter<BossInformationState> emit,
  ) {
    switch (event.bossTextInputType) {
      case BossTextInputType.businessNumber:
        emit(
          state.copyWith(
            businessNumber: event.newText,
          ),
        );
      case BossTextInputType.businessType:
        emit(
          state.copyWith(
            businessType: event.newText,
          ),
        );
      case BossTextInputType.bossName:
        emit(
          state.copyWith(
            bossName: event.newText,
          ),
        );
      case BossTextInputType.userName:
        emit(
          state.copyWith(
            userName: event.newText,
          ),
        );
      case BossTextInputType.storeName:
        emit(
          state.copyWith(
            storeName: event.newText,
          ),
        );
      case BossTextInputType.address:
        emit(
          state.copyWith(
            address: event.newText,
          ),
        );
      case BossTextInputType.postalCode:
        emit(
          state.copyWith(
            postalCode: event.newText,
          ),
        );
      case BossTextInputType.birth:
        emit(
          state.copyWith(
            birth: event.newText,
          ),
        );
    }
  }

  void _changeBussinessType(
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
    //TODO: 입력한 값을 api로 전달
    emit(
      state.copyWith(
        allFinished: true,
      ),
    );
  }
}
