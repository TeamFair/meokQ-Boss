// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MissionImpl _$$MissionImplFromJson(Map<String, dynamic> json) =>
    _$MissionImpl(
      content: json['content'] as String,
      target: json['target'] as String,
      quantity: json['quantity'] as int?,
      missionType: $enumDecode(_$MissionTypeEnumMap, json['missionType']),
    );

Map<String, dynamic> _$$MissionImplToJson(_$MissionImpl instance) {
  final val = <String, dynamic>{
    'content': instance.content,
    'target': instance.target,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('quantity', instance.quantity);
  val['missionType'] = _$MissionTypeEnumMap[instance.missionType]!;
  return val;
}

const _$MissionTypeEnumMap = {
  MissionType.free: 'free',
  MissionType.basic: 'basic',
};
