// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChallengeImpl _$$ChallengeImplFromJson(Map<String, dynamic> json) =>
    _$ChallengeImpl(
      id: json['id'] as int,
      url: json['url'] as String,
      applicantId: json['applicantId'] as String,
      quest: Quest.fromJson(json['quest'] as Map<String, dynamic>),
      challengeStatus:
          $enumDecode(_$ChallengeStatusEnumMap, json['challengeStatus']),
      day: json['day'] as String?,
    );

Map<String, dynamic> _$$ChallengeImplToJson(_$ChallengeImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'url': instance.url,
    'applicantId': instance.applicantId,
    'quest': instance.quest.toJson(),
    'challengeStatus': _$ChallengeStatusEnumMap[instance.challengeStatus]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('day', instance.day);
  return val;
}

const _$ChallengeStatusEnumMap = {
  ChallengeStatus.notIssued: 'notIssued',
  ChallengeStatus.issuedComplete: 'issuedComplete',
  ChallengeStatus.usedComplete: 'usedComplete',
};
