part of 'bnc_bloc.dart';

class BNCState extends Equatable {
  const BNCState({required this.tabIndex});

  final int tabIndex;

  BNCState copyWith({
    int? tabIndex,
  }) {
    return BNCState(
      tabIndex: tabIndex ?? this.tabIndex,
    );
  }

  @override
  List<Object> get props => [tabIndex];
}
