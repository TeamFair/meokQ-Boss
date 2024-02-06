// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LicenseImpl _$$LicenseImplFromJson(Map<String, dynamic> json) =>
    _$LicenseImpl(
      licenseId: json['licenseId'] as String? ?? '',
      licenseImageId: json['licenseImageId'] as String? ?? '',
      ownerName: json['ownerName'] as String? ?? '',
      marketName: json['marketName'] as String? ?? '',
      address: json['address'] as String? ?? '',
      postalCode: json['postalCode'] as String? ?? '',
    );

Map<String, dynamic> _$$LicenseImplToJson(_$LicenseImpl instance) =>
    <String, dynamic>{
      'licenseId': instance.licenseId,
      'licenseImageId': instance.licenseImageId,
      'ownerName': instance.ownerName,
      'marketName': instance.marketName,
      'address': instance.address,
      'postalCode': instance.postalCode,
    };
