// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarketVOImpl _$$MarketVOImplFromJson(Map<String, dynamic> json) =>
    _$MarketVOImpl(
      marketId: json['marketId'] as String? ?? '',
      name: json['name'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      district: json['district'] as String? ?? '',
      address: json['address'] as String? ?? '',
      status: json['status'] as String? ?? '',
    );

Map<String, dynamic> _$$MarketVOImplToJson(_$MarketVOImpl instance) =>
    <String, dynamic>{
      'marketId': instance.marketId,
      'name': instance.name,
      'phone': instance.phone,
      'district': instance.district,
      'address': instance.address,
      'status': instance.status,
    };
