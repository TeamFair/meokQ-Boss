import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/data/model/challenge/challenge.dart';
import 'package:meokq_boss/data/model/mission/mission.dart';
import 'package:meokq_boss/data/model/quest/quest.dart';
import 'package:meokq_boss/data/model/reward/reward.dart';

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
    final statisticsList = <Challenge>[
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
        statisticsList: statisticsList,
      ),
    );
  }
}
