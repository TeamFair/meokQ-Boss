// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_quest_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetQuestVOImpl _$$GetQuestVOImplFromJson(Map<String, dynamic> json) =>
    _$GetQuestVOImpl(
      questId: json['questId'] as String,
      rewardTitle: json['rewardTitle'] as String,
      missionTitle: json['missionTitle'] as String,
      questStatus: json['status'] as String,
    );

Map<String, dynamic> _$$GetQuestVOImplToJson(_$GetQuestVOImpl instance) =>
    <String, dynamic>{
      'questId': instance.questId,
      'rewardTitle': instance.rewardTitle,
      'missionTitle': instance.missionTitle,
      'status': instance.questStatus,
    };
