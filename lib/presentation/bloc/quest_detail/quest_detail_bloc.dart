import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/data/model/quest/quest.dart';
import 'package:meokq_boss/domain/repository/api/interface_remote.dart';

part 'quest_detail_state.dart';
part 'quest_detail_event.dart';

class QuestDetailBloc extends Bloc<QuestDetailEvent, QuestDetailState> {
  QuestDetailBloc()
      : super(
          const QuestDetailState(
            questPeriod: 1,
          ),
        ) {
    on<InitQuestDetailState>(_initQuestDetailState);
    on<DeleteQuest>(_deleteQuest);
    on<ChangeQuestPeriod>(_changeQuestPeriod);
    on<PostQuest>(_postQuest);
  }

  final _remote = getIt<InterfaceRemote>();

  Future<void> _initQuestDetailState(
    InitQuestDetailState event,
    Emitter<QuestDetailState> emit,
  ) async {
    // TODO: /api/boss/{bossID}로 ticketAccount를 받아온다
    int ticketAccount = 40;

    final quest = await _remote.getQuest(questId: event.questId);

    emit(
      state.copyWith(
        quest: quest,
        ticketAccount: ticketAccount,
      ),
    );
  }

  void _deleteQuest(
    DeleteQuest event,
    Emitter<QuestDetailState> emit,
  ) {}

  void _changeQuestPeriod(
    ChangeQuestPeriod event,
    Emitter<QuestDetailState> emit,
  ) {
    emit(
      state.copyWith(
        questPeriod: event.questPeriod,
      ),
    );
  }

  Future<void> _postQuest(
    PostQuest event,
    Emitter<QuestDetailState> emit,
  ) async {}
}
