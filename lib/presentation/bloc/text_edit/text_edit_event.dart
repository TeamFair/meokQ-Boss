part of 'text_edit_bloc.dart';

sealed class TextEditEvent extends Equatable {
  const TextEditEvent();

  @override
  List<Object?> get props => throw [];
}

class ChangeText extends TextEditEvent {
  final String text;

  const ChangeText({required this.text});
}
