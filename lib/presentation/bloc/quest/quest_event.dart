part of 'quest_bloc.dart';

sealed class QuestEvent {}

class InitAllQuest extends QuestEvent {}

class UpdateQuest extends QuestEvent {}
