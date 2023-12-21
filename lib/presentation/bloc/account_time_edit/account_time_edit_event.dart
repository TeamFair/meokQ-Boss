part of 'account_time_edit_bloc.dart';

sealed class AccountTimeEditEvent {}

class ChangeBusinessHour extends AccountTimeEditEvent {
  final String hour;
  final BusinessHour businessHour;

  ChangeBusinessHour({
    required this.hour,
    required this.businessHour,
  });
}

class ChangeBusinessDays extends AccountTimeEditEvent {
  final String day;

  ChangeBusinessDays({required this.day});
}

class ChangeAccountTime extends AccountTimeEditEvent {}

class InitAccountTime extends AccountTimeEditEvent {
  final AccountTimeEditArgument argument;

  InitAccountTime({required this.argument});
}
