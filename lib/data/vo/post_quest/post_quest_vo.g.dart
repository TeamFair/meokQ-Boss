// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_quest_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostQuestVOImpl _$$PostQuestVOImplFromJson(Map<String, dynamic> json) =>
    _$PostQuestVOImpl(
      marketId: json['marketId'] as String,
      mission: Mission.fromJson(json['missions'] as Map<String, dynamic>),
      reward: Reward.fromJson(json['rewards'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PostQuestVOImplToJson(_$PostQuestVOImpl instance) =>
    <String, dynamic>{
      'marketId': instance.marketId,
      'missions': instance.mission.toJson(),
      'rewards': instance.reward.toJson(),
    };
