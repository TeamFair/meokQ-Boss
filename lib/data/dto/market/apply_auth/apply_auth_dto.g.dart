// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apply_auth_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApplyAuthDTOImpl _$$ApplyAuthDTOImplFromJson(Map<String, dynamic> json) =>
    _$ApplyAuthDTOImpl(
      marketId: json['marketId'] as String? ?? '',
      owner: Owner.fromJson(json['owner'] as Map<String, dynamic>),
      license: License.fromJson(json['license'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ApplyAuthDTOImplToJson(_$ApplyAuthDTOImpl instance) =>
    <String, dynamic>{
      'marketId': instance.marketId,
      'owner': instance.owner.toJson(),
      'license': instance.license.toJson(),
    };
