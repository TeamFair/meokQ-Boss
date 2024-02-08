import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/data/vo/quest/get_quest_vo.dart';
import 'package:meokq_boss/domain/usecase/get_quests_use_case.dart';

part 'quest_event.dart';
part 'quest_state.dart';

class QuestBloc extends Bloc<QuestEvent, QuestState> {
  QuestBloc()
      : super(
          const QuestState(
            questList: [],
            questStatus: GetQuestStatus.init,
          ),
        ) {
    on<InitAllQuest>(_initAllQuest);
  }

  Future<void> _initAllQuest(
    InitAllQuest event,
    Emitter<QuestState> emit,
  ) async {
    final usecase = await GetQuestsUseCase().call(GetQuestsInput());

    usecase.fold(
      (l) => emit(
        state.copyWith(
          questStatus: GetQuestStatus.failure,
          questList: [],
        ),
      ),
      (r) => emit(
        state.copyWith(
          questStatus: GetQuestStatus.success,
          questList: r.questList,
        ),
      ),
    );
  }
}
