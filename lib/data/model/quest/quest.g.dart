// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestImpl _$$QuestImplFromJson(Map<String, dynamic> json) => _$QuestImpl(
      id: json['questId'] as int,
      reward: Reward.fromJson(json['rewards'] as Map<String, dynamic>),
      mission: Mission.fromJson(json['missions'] as Map<String, dynamic>),
      questStatus: json['questStatus'] as String,
    );

Map<String, dynamic> _$$QuestImplToJson(_$QuestImpl instance) =>
    <String, dynamic>{
      'questId': instance.id,
      'rewards': instance.reward.toJson(),
      'missions': instance.mission.toJson(),
      'questStatus': instance.questStatus,
    };
