part of 'tab_bar_bloc.dart';

class TabBarState extends Equatable {
  const TabBarState({required this.tabIndex});

  final int tabIndex;

  TabBarState copyWith({
    int? tabIndex,
  }) {
    return TabBarState(
      tabIndex: tabIndex ?? this.tabIndex,
    );
  }

  @override
  List<Object> get props => [tabIndex];
}
