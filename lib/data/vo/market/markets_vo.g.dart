// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'markets_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarketsVOImpl _$$MarketsVOImplFromJson(Map<String, dynamic> json) =>
    _$MarketsVOImpl(
      marketList: (json['marketList'] as List<dynamic>)
          .map((e) => MarketVO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MarketsVOImplToJson(_$MarketsVOImpl instance) =>
    <String, dynamic>{
      'marketList': instance.marketList.map((e) => e.toJson()).toList(),
    };
