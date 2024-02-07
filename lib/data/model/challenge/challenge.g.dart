// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChallengeImpl _$$ChallengeImplFromJson(Map<String, dynamic> json) =>
    _$ChallengeImpl(
      challengeId: json['challengeId'] as String,
      receiptImageId: json['receiptImageId'] as String,
      quest: Quest.fromJson(json['questId'] as Map<String, dynamic>),
      challengeStatus: json['status'] as String,
    );

Map<String, dynamic> _$$ChallengeImplToJson(_$ChallengeImpl instance) =>
    <String, dynamic>{
      'challengeId': instance.challengeId,
      'receiptImageId': instance.receiptImageId,
      'questId': instance.quest.toJson(),
      'status': instance.challengeStatus,
    };
