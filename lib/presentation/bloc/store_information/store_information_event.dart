part of 'store_information_bloc.dart';

sealed class StoreInformationEvent extends Equatable {
  const StoreInformationEvent();

  @override
  List<Object> get props => [];
}

class ChangeTextField extends StoreInformationEvent {
  final BossTextInputType bossTextInputType;
  final String newText;

  const ChangeTextField({
    required this.bossTextInputType,
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
  final List<String> businessDays;

  const ChangeBussinessDays({
    required this.businessDays,
  });
}

class AddImage extends StoreInformationEvent {
  final String imageUrl;

  const AddImage({
    required this.imageUrl,
  });
}
