// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarketTimeImpl _$$MarketTimeImplFromJson(Map<String, dynamic> json) =>
    _$MarketTimeImpl(
      weekDay: json['weekDay'] as String? ?? '',
      openTime: json['openTime'] as String? ?? '',
      closeTime: json['closeTime'] as String? ?? '',
      holidayYn: json['holidayYn'] as String? ?? '',
    );

Map<String, dynamic> _$$MarketTimeImplToJson(_$MarketTimeImpl instance) =>
    <String, dynamic>{
      'weekDay': instance.weekDay,
      'openTime': instance.openTime,
      'closeTime': instance.closeTime,
      'holidayYn': instance.holidayYn,
    };
