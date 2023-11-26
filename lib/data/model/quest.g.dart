// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestImpl _$$QuestImplFromJson(Map<String, dynamic> json) => _$QuestImpl(
      id: json['id'] as int,
      reward: json['reward'] as String,
      mission: json['mission'] as String,
      questStatus: $enumDecode(_$QuestStatusEnumMap, json['questStatus']),
    );

Map<String, dynamic> _$$QuestImplToJson(_$QuestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reward': instance.reward,
      'mission': instance.mission,
      'questStatus': _$QuestStatusEnumMap[instance.questStatus]!,
    };

const _$QuestStatusEnumMap = {
  QuestStatus.wait: 'wait',
  QuestStatus.review: 'review',
  QuestStatus.open: 'open',
};
