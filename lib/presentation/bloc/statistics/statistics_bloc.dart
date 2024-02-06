import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/data/model/challenge/challenge.dart';

part 'statistics_event.dart';
part 'statistics_state.dart';

class StatisticsBloc extends Bloc<StatisticsEvent, StatisticsState> {
  StatisticsBloc() : super(const StatisticsState(statisticsList: [])) {
    on<InitStatistics>(_initStatistics);
  }

  Future<void> _initStatistics(
    InitStatistics event,
    Emitter<StatisticsState> emit,
  ) async {
    // TODO: api를 통해 받아와야 한다

    emit(
      state.copyWith(
        statisticsList: [],
      ),
    );
  }
}
