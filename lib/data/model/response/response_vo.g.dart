// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseVOImpl _$$ResponseVOImplFromJson(Map<String, dynamic> json) =>
    _$ResponseVOImpl(
      data: json['data'],
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ResponseVOImplToJson(_$ResponseVOImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('status', instance.status);
  writeNotNull('message', instance.message);
  return val;
}
