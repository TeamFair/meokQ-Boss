// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agreement_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgreementDTOImpl _$$AgreementDTOImplFromJson(Map<String, dynamic> json) =>
    _$AgreementDTOImpl(
      version: json['version'] as int? ?? 0,
      agreementType: json['agreementType'] as String,
      acceptYn: json['acceptYn'] as String,
    );

Map<String, dynamic> _$$AgreementDTOImplToJson(_$AgreementDTOImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'agreementType': instance.agreementType,
      'acceptYn': instance.acceptYn,
    };
