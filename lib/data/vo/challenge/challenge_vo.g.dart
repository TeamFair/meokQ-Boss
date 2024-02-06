// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChallengeVOImpl _$$ChallengeVOImplFromJson(Map<String, dynamic> json) =>
    _$ChallengeVOImpl(
      challengeId: json['challengeId'] as String? ?? '',
      quest: Quest.fromJson(json['quest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChallengeVOImplToJson(_$ChallengeVOImpl instance) =>
    <String, dynamic>{
      'challengeId': instance.challengeId,
      'quest': instance.quest.toJson(),
    };
