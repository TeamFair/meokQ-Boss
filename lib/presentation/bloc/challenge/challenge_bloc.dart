import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/data/model/challenge/challenge.dart';

part 'challenge_state.dart';
part 'challenge_event.dart';

class ChallengeBloc extends Bloc<ChallengeEvent, ChallengeState> {
  ChallengeBloc() : super(const ChallengeState(challengeList: [])) {
    on<InitChallenge>(_initChallenge);
  }

  Future<void> _initChallenge(
    InitChallenge event,
    Emitter<ChallengeState> emit,
  ) async {
    

    emit(
      state.copyWith(
        challengeList: [],
      ),
    );
  }
}
