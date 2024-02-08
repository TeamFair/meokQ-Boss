// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RewardImpl _$$RewardImplFromJson(Map<String, dynamic> json) => _$RewardImpl(
      content: json['content'] as String?,
      target: json['target'] as String? ?? '',
      rewardTypeStr: json['type'] as String? ?? '',
      quantity: json['quantity'] as int?,
      discountRate: json['discountRate'] as int?,
    );

Map<String, dynamic> _$$RewardImplToJson(_$RewardImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('content', instance.content);
  val['target'] = instance.target;
  val['type'] = instance.rewardTypeStr;
  writeNotNull('quantity', instance.quantity);
  writeNotNull('discountRate', instance.discountRate);
  return val;
}
