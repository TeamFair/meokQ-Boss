// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_market_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckMarketVOImpl _$$CheckMarketVOImplFromJson(Map<String, dynamic> json) =>
    _$CheckMarketVOImpl(
      marketId: json['marketId'] as String? ?? '',
      reviewResult: json['reviewResult'] as String? ?? '',
      comment: json['comment'] as String? ?? '',
    );

Map<String, dynamic> _$$CheckMarketVOImplToJson(_$CheckMarketVOImpl instance) =>
    <String, dynamic>{
      'marketId': instance.marketId,
      'reviewResult': instance.reviewResult,
      'comment': instance.comment,
    };
