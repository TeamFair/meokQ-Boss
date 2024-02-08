import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/data/vo/challenge/challenge_vo.dart';
import 'package:meokq_boss/domain/usecase/get_challenges_use_case.dart';

part 'challenge_state.dart';
part 'challenge_event.dart';

class ChallengeBloc extends Bloc<ChallengeEvent, ChallengeState> {
  ChallengeBloc()
      : super(const ChallengeState(
            challengeList: [], challengeStatus: ChallengeStatus.init,),) {
    on<InitChallenge>(_initChallenge);
  }

  Future<void> _initChallenge(
    InitChallenge event,
    Emitter<ChallengeState> emit,
  ) async {
    final usecase = await GetChallengeUseCase().call(GetChallengeInput());

    usecase.fold(
      (l) => emit(
        state.copyWith(
          challengeStatus: ChallengeStatus.failure,
          challengeList: [],
        ),
      ),
      (r) => emit(
        state.copyWith(
          challengeStatus: ChallengeStatus.success,
          challengeList: r.challengeList,
        ),
      ),
    );
  }
}
