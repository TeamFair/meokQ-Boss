part of 'text_edit_bloc.dart';

class TextEditState extends Equatable {
  const TextEditState({required this.text});

  final String text;

  TextEditState copyWith({
    String? text,
  }) {
    return TextEditState(
      text: text ?? this.text,
    );
  }

  @override
  List<Object?> get props => throw [text];
}
