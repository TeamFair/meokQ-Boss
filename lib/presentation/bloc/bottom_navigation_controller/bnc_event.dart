part of 'bnc_bloc.dart';

sealed class BNCEvent extends Equatable {
  const BNCEvent();

  @override
  List<Object> get props => [];
}

class TabChange extends BNCEvent {
  final int tabIndex;

  const TabChange({required this.tabIndex});
}
