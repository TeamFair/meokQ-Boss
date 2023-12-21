part of 'account_bloc.dart';

sealed class AccountEvent {}

class ChangeLogo extends AccountEvent {
  final String logoUrl;

  ChangeLogo({required this.logoUrl});
}

class ChangeText extends AccountEvent {
  final String newText;
  final TextType textType;

  ChangeText({
    required this.newText,
    required this.textType,
  });
}

class ChangeAccount extends AccountEvent {}

class EditButtonClicked extends AccountEvent {}

class InitMyInformation extends AccountEvent {}
