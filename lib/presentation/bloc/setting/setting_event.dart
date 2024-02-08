part of 'setting_bloc.dart';

sealed class SettingEvent {}

class InitState extends SettingEvent {}

class TapAgreement extends SettingEvent {
  final Agreement agreement;

  TapAgreement({required this.agreement});
}

class TapLogoutButton extends SettingEvent {}

class TapWithdrawButton extends SettingEvent {}