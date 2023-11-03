import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'text_edit_event.dart';
part 'text_edit_state.dart';

class TextEditBloc extends Bloc<TextEditEvent, TextEditState> {
  TextEditBloc() : super(const TextEditState(text: '')) {
    on<ChangeText>(changeText);
  }

  void changeText(
    ChangeText event,
    Emitter<TextEditState> emit,
  ) {
    emit(state.copyWith(text: event.text));
  }
}
