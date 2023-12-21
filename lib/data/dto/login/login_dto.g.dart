// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginDTOImpl _$$LoginDTOImplFromJson(Map<String, dynamic> json) =>
    _$LoginDTOImpl(
      email: json['email'] as String,
      channel: json['channel'] as String,
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      userType: json['userType'] as String? ?? 'BOSS',
    );

Map<String, dynamic> _$$LoginDTOImplToJson(_$LoginDTOImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'channel': instance.channel,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'userType': instance.userType,
    };
