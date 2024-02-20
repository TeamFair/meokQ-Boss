import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/data/model/mission/mission.dart';
import 'package:meokq_boss/data/model/reward/reward.dart';
import 'package:meokq_boss/domain/usecase/quest_add_use_case.dart';

part 'quest_add_state.dart';
part 'quest_add_event.dart';

class QuestAddBloc extends Bloc<QuestAddEvent, QuestAddState> {
  QuestAddBloc() : super(QuestAddState.init()) {
    on<ChangeMissionType>(_changeQuestType);
    on<ChangeRewardType>(_changeRewardType);
    on<ChangeText>(_changeText);
    on<AddQuest>(_addQuest);
  }

  void _changeQuestType(
    ChangeMissionType event,
    Emitter<QuestAddState> emit,
  ) {
    emit(
      state.copyWith(
        missionType: event.missionType,
      ),
    );
  }

  void _changeRewardType(
    ChangeRewardType event,
    Emitter<QuestAddState> emit,
  ) {
    emit(
      state.copyWith(
        rewardType: event.rewardType,
      ),
    );
  }

  void _changeText(
    ChangeText event,
    Emitter<QuestAddState> emit,
  ) {
    switch (event.textType) {
      case TextType.missionItem:
        emit(
          state.copyWith(
            missionItem: event.text,
          ),
        );
      case TextType.missionItemCount:
        emit(
          state.copyWith(
            missionItemCount: event.text,
          ),
        );
      case TextType.rewardItem:
        emit(
          state.copyWith(
            rewardItem: event.text,
          ),
        );
      case TextType.reward:
        emit(
          state.copyWith(
            reward: event.text,
          ),
        );
    }
  }

  Future<void> _addQuest(
    AddQuest event,
    Emitter<QuestAddState> emit,
  ) async {
    final usecase = await QuestAddUseCase().call(
      QuestAddInput(
        missionItem: state.missionItem,
        missionItemCount: int.parse(
          state.missionItemCount.isEmpty ? '0' : state.missionItemCount,
        ),
        rewardItem: state.rewardItem,
        reward: int.parse(state.reward),
        missionType: state.missionType,
        rewardType: state.rewardType,
      ),
    );

    emit(
      state.copyWith(
        applyState: usecase.fold(
          (l) => ApplyState.failed,
          (r) => ApplyState.success,
        ),
      ),
    );
  }
}
