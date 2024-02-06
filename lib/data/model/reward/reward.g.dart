// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RewardImpl _$$RewardImplFromJson(Map<String, dynamic> json) => _$RewardImpl(
      content: json['content'] as String? ?? '',
      target: json['target'] as String? ?? '',
      rewardTypeStr: json['type'] as String? ?? '',
      quantity: json['quantity'] as int? ?? 0,
      discountRate: json['discountRate'] as int? ?? 0,
    );

Map<String, dynamic> _$$RewardImplToJson(_$RewardImpl instance) {
  final val = <String, dynamic>{
    'content': instance.content,
    'target': instance.target,
    'type': instance.rewardTypeStr,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('quantity', instance.quantity);
  writeNotNull('discountRate', instance.discountRate);
  return val;
}
