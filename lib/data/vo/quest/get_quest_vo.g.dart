// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_quest_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetQuestVOImpl _$$GetQuestVOImplFromJson(Map<String, dynamic> json) =>
    _$GetQuestVOImpl(
      id: json['questId'] as int,
      rewardTitle: json['rewardTitle'] as String,
      missionTitle: json['missionTitle'] as String,
      questStatus: $enumDecode(_$QuestStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$GetQuestVOImplToJson(_$GetQuestVOImpl instance) =>
    <String, dynamic>{
      'questId': instance.id,
      'rewardTitle': instance.rewardTitle,
      'missionTitle': instance.missionTitle,
      'status': _$QuestStatusEnumMap[instance.questStatus]!,
    };

const _$QuestStatusEnumMap = {
  QuestStatus.checking: 'checking',
  QuestStatus.review: 'review',
  QuestStatus.open: 'open',
};
