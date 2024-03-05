// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestImpl _$$QuestImplFromJson(Map<String, dynamic> json) => _$QuestImpl(
      questId: json['questId'] as String,
      rewards: (json['rewardTitles'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      missions: (json['missionTitles'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$QuestImplToJson(_$QuestImpl instance) =>
    <String, dynamic>{
      'questId': instance.questId,
      'rewardTitles': instance.rewards,
      'missionTitles': instance.missions,
    };
