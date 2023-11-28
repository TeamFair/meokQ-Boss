import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/data/model/mission/mission.dart';
import 'package:meokq_boss/data/model/quest/quest.dart';
import 'package:meokq_boss/data/model/reward/reward.dart';

part 'quest_event.dart';
part 'quest_state.dart';

class QuestBloc extends Bloc<QuestEvent, QuestState> {
  QuestBloc() : super(const QuestState(questList: [])) {
    on<InitQuest>(_initQuest);
  }

  Future<void> _initQuest(
    InitQuest event,
    Emitter<QuestState> emit,
  ) async {
    // TODO: rest에서 quest의 정보를 받아옵니다
    final questList = [
      const Quest(
        id: 0,
        reward: Reward(
          content: '아메리카노 50% 할인권',
          target: '아메리카노',
          rewardTypeStr: 'DISCOUNT',
          quantity: null,
          discountRate: 50,
        ),
        mission: Mission(
          content: '오후 12시 전에 아메리카노 2잔 주문',
          target: '아메리카노',
          quantity: 2,
          missionType: MissionType.free,
        ),
        questStatus: QuestStatus.open,
      ),
      const Quest(
        id: 1,
        reward: Reward(
          content: '카페라떼 70% 할인권',
          target: '카페라떼',
          rewardTypeStr: 'DISCOUNT',
          quantity: null,
          discountRate: 70,
        ),
        mission: Mission(
          content: '빵 2종류 이상 구매 시',
          target: '빵',
          quantity: 2,
          missionType: MissionType.free,
        ),
        questStatus: QuestStatus.wait,
      ),
      const Quest(
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
        questStatus: QuestStatus.review,
      ),
    ];
    emit(
      state.copyWith(
        questList: questList,
      ),
    );
  }
}
