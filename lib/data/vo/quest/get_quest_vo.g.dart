// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_quest_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestListVOImpl _$$QuestListVOImplFromJson(Map<String, dynamic> json) =>
    _$QuestListVOImpl(
      questId: json['questId'] as String,
      rewardTitle: json['rewardTitle'] as String,
      missionTitle: json['missionTitle'] as String,
      questStatus: json['status'] as String,
    );

Map<String, dynamic> _$$QuestListVOImplToJson(_$QuestListVOImpl instance) =>
    <String, dynamic>{
      'questId': instance.questId,
      'rewardTitle': instance.rewardTitle,
      'missionTitle': instance.missionTitle,
      'status': instance.questStatus,
    };
