part of 'boss_information_bloc.dart';

sealed class BossInformationEvent extends Equatable {
  const BossInformationEvent();

  @override
  List<Object> get props => [];
}

class ChangeBusinessNumber extends BossInformationEvent {
  final String newText;

  const ChangeBusinessNumber({
    required this.newText,
  });
}

class ChangeBossName extends BossInformationEvent {
  final String newText;

  const ChangeBossName({
    required this.newText,
  });
}

class ChangeStoreName extends BossInformationEvent {
  final String newText;

  const ChangeStoreName({
    required this.newText,
  });
}

class ChangeAddress extends BossInformationEvent {
  final String newText;

  const ChangeAddress({
    required this.newText,
  });
}

class ChangePostalCode extends BossInformationEvent {
  final String newText;

  const ChangePostalCode({
    required this.newText,
  });
}

class ChangeBirth extends BossInformationEvent {
  final String newText;

  const ChangeBirth({
    required this.newText,
  });
}

class ChangeUserName extends BossInformationEvent {
  final String newText;

  const ChangeUserName({
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