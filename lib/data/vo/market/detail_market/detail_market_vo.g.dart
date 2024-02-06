// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_market_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailMarketVOImpl _$$DetailMarketVOImplFromJson(Map<String, dynamic> json) =>
    _$DetailMarketVOImpl(
      marketId: json['marketId'] as String? ?? '',
      name: json['name'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      district: json['district'] as String? ?? '',
      address: json['address'] as String? ?? '',
      status: json['status'] as String? ?? '',
      ticketCount: json['ticketCount'] as int? ?? 0,
      logoImageId: json['logoImageId'] as String? ?? '',
      marketTimes: (json['marketTimes'] as List<dynamic>)
          .map((e) => MarketTime.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DetailMarketVOImplToJson(
        _$DetailMarketVOImpl instance) =>
    <String, dynamic>{
      'marketId': instance.marketId,
      'name': instance.name,
      'phone': instance.phone,
      'district': instance.district,
      'address': instance.address,
      'status': instance.status,
      'ticketCount': instance.ticketCount,
      'logoImageId': instance.logoImageId,
      'marketTimes': instance.marketTimes.map((e) => e.toJson()).toList(),
    };
