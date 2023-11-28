part of 'quest_detail_bloc.dart';

sealed class QuestDetailEvent {}

class InitQuestDetailState extends QuestDetailEvent {
  final Quest quest;

  InitQuestDetailState({
    required this.quest,
  });
}

class DeleteQuest extends QuestDetailEvent {}

class ChangeQuestPeriod extends QuestDetailEvent {
  final int questPeriod;

  ChangeQuestPeriod({required this.questPeriod});
}

class PostQuest extends QuestDetailEvent {}
