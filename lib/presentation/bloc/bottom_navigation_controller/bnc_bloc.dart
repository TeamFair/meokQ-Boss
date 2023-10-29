import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bnc_state.dart';
part 'bnc_event.dart';

class BNCBloc extends Bloc<BNCEvent, BNCState> {
  BNCBloc() : super(const BNCState(tabIndex: 0)) {
    on<TabChange>(_onTabChanged);
  }

  void _onTabChanged(
    TabChange event,
    Emitter<BNCState> emit,
  ) {
    emit(state.copyWith(tabIndex: event.tabIndex));
  }
}
