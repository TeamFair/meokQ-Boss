part of 'quest_detail_bloc.dart';

sealed class QuestDetailEvent {}

class InitQuestDetailState extends QuestDetailEvent {
  final String questId;

  InitQuestDetailState({
    required this.questId,
  });
}

class DeleteQuest extends QuestDetailEvent {}

class ChangeQuestPeriod extends QuestDetailEvent {
  final int questPeriod;

  ChangeQuestPeriod({required this.questPeriod});
}

class PostQuest extends QuestDetailEvent {}
