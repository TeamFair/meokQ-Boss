part of 'store_information_bloc.dart';

sealed class StoreInformationEvent extends Equatable {
  const StoreInformationEvent();

  @override
  List<Object> get props => [];
}

class ChangeTextField extends StoreInformationEvent {
  final StoreTextInputType storeTextInputType;
  final String newText;

  const ChangeTextField({
    required this.storeTextInputType,
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

class AddImage extends StoreInformationEvent {}

class ChangeStage extends StoreInformationEvent {
  final Stage stage;

  const ChangeStage({
    required this.stage,
  });
}

class StoreApply extends StoreInformationEvent {}