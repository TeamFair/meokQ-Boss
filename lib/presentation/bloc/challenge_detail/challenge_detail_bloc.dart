import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/core/config/const.dart';
import 'package:meokq_boss/data/vo/challenge/challenge_vo.dart';
import 'package:meokq_boss/domain/usecase/post_challenge_use_case.dart';

part 'challenge_detail_state.dart';
part 'challenge_detail_event.dart';

class ChallengeDetailBloc
    extends Bloc<ChallengeDetailEvent, ChallengeDetailState> {
  ChallengeDetailBloc()
      : super(
          const ChallengeDetailState(
            imageUrl: '',
            rewardTitle: '',
            missionTitle: '',
            challengeId: '',
            status: ChallengeDetailStatus.init,
            comment: '영수증이 불명확합니다',
            userNickName: '',
          ),
        ) {
    on<InitChallengeState>(_initChallenge);
    on<RejectChallenge>(_rejectChallenge);
    on<ApplyChallenge>(_applyChallenge);
    on<ChangeComment>(_changeComment);
  }

  Future<void> _initChallenge(
    InitChallengeState event,
    Emitter<ChallengeDetailState> emit,
  ) async {
    emit(
      state.copyWith(
        imageUrl: imageUrl + event.challengeVO.receiptImageId,
        rewardTitle: event.challengeVO.quest.rewards[0].title ?? '',
        missionTitle: event.challengeVO.quest.missions[0].title ?? '',
        challengeId: event.challengeVO.challengeId,
        userNickName: event.challengeVO.userNickName,
      ),
    );
  }

  Future<void> _rejectChallenge(
    RejectChallenge event,
    Emitter<ChallengeDetailState> emit,
  ) async {
    final usecase = await PostChallengeUseCase().call(
      PostChallengeInput(
        challengeId: state.challengeId,
        result: 'REJECTED',
        comment: state.comment,
      ),
    );

    usecase.fold(
      (l) => emit(
        state.copyWith(
          status: ChallengeDetailStatus.failed,
        ),
      ),
      (r) => emit(
        state.copyWith(
          status: ChallengeDetailStatus.reject,
        ),
      ),
    );
  }

  Future<void> _applyChallenge(
    ApplyChallenge event,
    Emitter<ChallengeDetailState> emit,
  ) async {
    final usecase = await PostChallengeUseCase().call(
      PostChallengeInput(
        challengeId: state.challengeId,
        result: 'APPROVED',
        comment: null,
      ),
    );

    usecase.fold(
      (l) => emit(
        state.copyWith(
          status: ChallengeDetailStatus.failed,
        ),
      ),
      (r) => emit(
        state.copyWith(
          status: ChallengeDetailStatus.apply,
        ),
      ),
    );
  }

  void _changeComment(
    ChangeComment event,
    Emitter<ChallengeDetailState> emit,
  ) {
    emit(
      state.copyWith(
        comment: event.comment,
      ),
    );
  }
}
