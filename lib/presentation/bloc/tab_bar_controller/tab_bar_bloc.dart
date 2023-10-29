import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'tab_bar_state.dart';
part 'tab_bar_event.dart';

class TabBarBloc extends Bloc<TabBarEvent, TabBarState> {
  TabBarBloc() : super(const TabBarState(tabIndex: 0)) {
    on<TabChange>(_onTabChanged);
  }

  void _onTabChanged(
    TabChange event,
    Emitter<TabBarState> emit,
  ) {
    emit(state.copyWith(tabIndex: event.tabIndex));
  }
}
