// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_quests_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetQuestsImpl _$$GetQuestsImplFromJson(Map<String, dynamic> json) =>
    _$GetQuestsImpl(
      questList: (json['questList'] as List<dynamic>)
          .map((e) => GetQuestVO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetQuestsImplToJson(_$GetQuestsImpl instance) =>
    <String, dynamic>{
      'questList': instance.questList.map((e) => e.toJson()).toList(),
    };
