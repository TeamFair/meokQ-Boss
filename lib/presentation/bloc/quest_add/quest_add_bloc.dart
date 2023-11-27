import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'quest_add_state.dart';
part 'quest_add_event.dart';

class QuestAddBloc extends Bloc<QuestAddEvent, QuestAddState> {
  QuestAddBloc() : super(QuestAddState.init()) {
    on<ChangeQuestType>(_changeQuestType);
    on<ChangeRewardType>(_changeRewardType);
    on<ChangeText>(_changeText);
  }

  void _changeQuestType(
    ChangeQuestType event,
    Emitter<QuestAddState> emit,
  ) {
    emit(
      state.copyWith(
        questType: event.questType,
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
}
