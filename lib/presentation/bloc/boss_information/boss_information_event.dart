part of 'boss_information_bloc.dart';

sealed class BossInformationEvent extends Equatable {
  const BossInformationEvent();

  @override
  List<Object> get props => [];
}

class ChangeTextField extends BossInformationEvent {
  final BossTextInputType bossTextInputType;
  final String newText;

  const ChangeTextField({
    required this.bossTextInputType,
    required this.newText,
  });
}

class ChangeBussinessType extends BossInformationEvent {
  final String businessType;

  const ChangeBussinessType({
    required this.businessType,
  });
}

class AddImage extends BossInformationEvent {
  final ImageType imageType;
  final ImagePicker imagePicker;

  const AddImage({
    required this.imageType,
    required this.imagePicker,
  });
}

class ChangeStage extends BossInformationEvent {
  final Stage stage;

  const ChangeStage({
    required this.stage,
  });
}

class WritingCompleted extends BossInformationEvent {}