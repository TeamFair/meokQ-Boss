part of 'quest_add_bloc.dart';

sealed class QuestAddEvent {}

class ChangeMissionType extends QuestAddEvent {
  final MissionType missionType;

  ChangeMissionType({required this.missionType});
}

class ChangeRewardType extends QuestAddEvent {
  final RewardType rewardType;

  ChangeRewardType({required this.rewardType});
}

class ChangeText extends QuestAddEvent {
  final String text;
  final TextType textType;

  ChangeText({
    required this.text,
    required this.textType,
  });
}

class AddQuest extends QuestAddEvent {}