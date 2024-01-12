// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apply_market_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApplyMarketDTOImpl _$$ApplyMarketDTOImplFromJson(Map<String, dynamic> json) =>
    _$ApplyMarketDTOImpl(
      logoImageId: json['logoImageId'] as String? ?? '',
      name: json['name'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      district: json['district'] as String? ?? '',
      address: json['address'] as String? ?? '',
      marketTime: (json['marketTime'] as List<dynamic>)
          .map((e) => MarketTime.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ApplyMarketDTOImplToJson(
        _$ApplyMarketDTOImpl instance) =>
    <String, dynamic>{
      'logoImageId': instance.logoImageId,
      'name': instance.name,
      'phone': instance.phone,
      'district': instance.district,
      'address': instance.address,
      'marketTime': instance.marketTime.map((e) => e.toJson()).toList(),
    };
