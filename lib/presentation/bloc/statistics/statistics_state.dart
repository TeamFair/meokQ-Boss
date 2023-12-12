part of 'statistics_bloc.dart';



class StatisticsState extends Equatable {
  final List<Challenge> statisticsList;

  const StatisticsState({required this.statisticsList});

  StatisticsState copyWith({
    List<Challenge>? statisticsList,
  }) {
    return StatisticsState(
      statisticsList: statisticsList ?? this.statisticsList,
    );
  }

  @override
  List<Object?> get props => [statisticsList];
}