part of 'tab_bar_bloc.dart';

sealed class TabBarEvent extends Equatable {
  const TabBarEvent();

  @override
  List<Object> get props => [];
}

class TabChange extends TabBarEvent {
  final int tabIndex;

  const TabChange({required this.tabIndex});
}
