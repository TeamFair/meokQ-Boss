// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge_quest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChallengeQuestImpl _$$ChallengeQuestImplFromJson(Map<String, dynamic> json) =>
    _$ChallengeQuestImpl(
      questId: json['questId'] as String,
      rewards: (json['rewards'] as List<dynamic>)
          .map((e) => Reward.fromJson(e as Map<String, dynamic>))
          .toList(),
      missions: (json['missions'] as List<dynamic>)
          .map((e) => Mission.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChallengeQuestImplToJson(
        _$ChallengeQuestImpl instance) =>
    <String, dynamic>{
      'questId': instance.questId,
      'rewards': instance.rewards.map((e) => e.toJson()).toList(),
      'missions': instance.missions.map((e) => e.toJson()).toList(),
    };
