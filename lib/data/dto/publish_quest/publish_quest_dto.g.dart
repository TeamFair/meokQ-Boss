// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publish_quest_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PublishQuestDTOImpl _$$PublishQuestDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$PublishQuestDTOImpl(
      marketId: json['marketId'] as String,
      questId: json['questId'] as String,
      ticketCount: json['ticketCount'] as int,
    );

Map<String, dynamic> _$$PublishQuestDTOImplToJson(
        _$PublishQuestDTOImpl instance) =>
    <String, dynamic>{
      'marketId': instance.marketId,
      'questId': instance.questId,
      'ticketCount': instance.ticketCount,
    };
