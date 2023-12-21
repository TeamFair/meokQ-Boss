part of 'store_information_bloc.dart';

sealed class StoreInformationEvent extends Equatable {
  const StoreInformationEvent();

  @override
  List<Object> get props => [];
}

class ChangeStore extends StoreInformationEvent {
  final String newText;

  const ChangeStore({
    required this.newText,
  });
}

class ChangeAddress extends StoreInformationEvent {
  final String newText;

  const ChangeAddress({
    required this.newText,
  });
}

class ChangePhone extends StoreInformationEvent {
  final String newText;

  const ChangePhone({
    required this.newText,
  });
}

class ChangeBussinessHour extends StoreInformationEvent {
  final String time;
  final BusinessHour businessHour;

  const ChangeBussinessHour({
    required this.time,
    required this.businessHour,
  });
}

class ChangeBussinessDays extends StoreInformationEvent {
  final String day;

  const ChangeBussinessDays({
    required this.day,
  });
}

class AddImageFromGallery extends StoreInformationEvent {}

class AddImageFromCamera extends StoreInformationEvent {}

class ChangeStage extends StoreInformationEvent {
  final Stage stage;

  const ChangeStage({
    required this.stage,
  });
}

class StoreApply extends StoreInformationEvent {}
