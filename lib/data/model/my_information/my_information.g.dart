// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyInformationImpl _$$MyInformationImplFromJson(Map<String, dynamic> json) =>
    _$MyInformationImpl(
      logoUrl: json['logoUrl'] as String,
      name: json['name'] as String,
      questCount: json['questCount'] as int,
      ticketCount: json['ticketCount'] as int,
      address: json['address'] as String,
      businessDays: (json['businessDays'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      open: json['open'] as String,
      close: json['close'] as String,
      phone: json['phone'] as String,
      changedLogoUrl: json['changedLogoUrl'] as String,
      businessDaysString: json['businessDaysString'] as String,
    );

Map<String, dynamic> _$$MyInformationImplToJson(_$MyInformationImpl instance) =>
    <String, dynamic>{
      'logoUrl': instance.logoUrl,
      'name': instance.name,
      'questCount': instance.questCount,
      'ticketCount': instance.ticketCount,
      'address': instance.address,
      'businessDays': instance.businessDays,
      'open': instance.open,
      'close': instance.close,
      'phone': instance.phone,
      'changedLogoUrl': instance.changedLogoUrl,
      'businessDaysString': instance.businessDaysString,
    };
