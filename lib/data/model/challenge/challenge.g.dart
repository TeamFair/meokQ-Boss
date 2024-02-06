// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChallengeImpl _$$ChallengeImplFromJson(Map<String, dynamic> json) =>
    _$ChallengeImpl(
      id: json['questId'] as int,
      url: json['url'] as String,
      applicantId: json['applicantId'] as String,
      quest: Quest.fromJson(json['quest'] as Map<String, dynamic>),
      challengeStatus: json['challengeStatus'] as String,
      day: json['day'] as String?,
    );

Map<String, dynamic> _$$ChallengeImplToJson(_$ChallengeImpl instance) {
  final val = <String, dynamic>{
    'questId': instance.id,
    'url': instance.url,
    'applicantId': instance.applicantId,
    'quest': instance.quest.toJson(),
    'challengeStatus': instance.challengeStatus,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('day', instance.day);
  return val;
}
