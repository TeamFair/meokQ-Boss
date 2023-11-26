part of 'quest_bloc.dart';

sealed class QuestEvent {}

class InitQuest extends QuestEvent {}

class UpdateQuest extends QuestEvent {}