// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestImpl _$$QuestImplFromJson(Map<String, dynamic> json) => _$QuestImpl(
      id: json['id'] as int,
      reward: Reward.fromJson(json['reward'] as Map<String, dynamic>),
      mission: Mission.fromJson(json['mission'] as Map<String, dynamic>),
      questStatus: $enumDecode(_$QuestStatusEnumMap, json['questStatus']),
    );

Map<String, dynamic> _$$QuestImplToJson(_$QuestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reward': instance.reward.toJson(),
      'mission': instance.mission.toJson(),
      'questStatus': _$QuestStatusEnumMap[instance.questStatus]!,
    };

const _$QuestStatusEnumMap = {
  QuestStatus.wait: 'wait',
  QuestStatus.review: 'review',
  QuestStatus.open: 'open',
};
