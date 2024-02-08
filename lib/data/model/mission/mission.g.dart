// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MissionImpl _$$MissionImplFromJson(Map<String, dynamic> json) =>
    _$MissionImpl(
      content: json['content'] as String?,
      target: json['target'] as String? ?? '',
      quantity: json['quantity'] as int?,
      missionType: json['type'] as String,
    );

Map<String, dynamic> _$$MissionImplToJson(_$MissionImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('content', instance.content);
  val['target'] = instance.target;
  writeNotNull('quantity', instance.quantity);
  val['type'] = instance.missionType;
  return val;
}
