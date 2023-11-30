import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/data/model/challenge/challenge.dart';
import 'package:meokq_boss/data/model/mission/mission.dart';
import 'package:meokq_boss/data/model/quest/quest.dart';
import 'package:meokq_boss/data/model/reward/reward.dart';

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
    final challengeList = <Challenge>[
      const Challenge(
        id: 0,
        url: '',
        applicantId: 'asd@naver.com',
        quest: Quest(
          id: 2,
          reward: Reward(
            content: '랜덤 조각 케이크 무료 증정권',
            target: '랜덤 조각 케이크',
            rewardTypeStr: 'FREE',
            quantity: 1,
            discountRate: null,
          ),
          mission: Mission(
            content: '가게 후기 SNS에 포스팅 완료 시',
            target: 'SNS',
            quantity: 2,
            missionType: MissionType.free,
          ),
          questStatus: QuestStatus.open,
        ),
        challengeStatus: ChallengeStatus.issuedComplete,
        day: '9/26(화)',
      ),
      const Challenge(
        id: 0,
        url: '',
        applicantId: 'qwe@gmail.com',
        quest: Quest(
          id: 2,
          reward: Reward(
            content: '랜덤 조각 케이크 무료 증정권',
            target: '랜덤 조각 케이크',
            rewardTypeStr: 'FREE',
            quantity: 1,
            discountRate: null,
          ),
          mission: Mission(
            content: '가게 후기 SNS에 포스팅 완료 시',
            target: 'SNS',
            quantity: 2,
            missionType: MissionType.free,
          ),
          questStatus: QuestStatus.open,
        ),
        challengeStatus: ChallengeStatus.usedComplete,
        day: '7/8(토)',
      ),
    ];

    emit(
      state.copyWith(
        challengeList: challengeList,
      ),
    );
  }
}
