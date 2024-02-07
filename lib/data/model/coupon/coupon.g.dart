// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CouponImpl _$$CouponImplFromJson(Map<String, dynamic> json) => _$CouponImpl(
      useDate: json['useDate'] as String,
      couponStatus: json['status'] as String,
      couponId: json['couponId'] as String,
      userNickname: json['userNickname'] as String,
      reward: Reward.fromJson(json['reward'] as Map<String, dynamic>),
      missions: (json['missions'] as List<dynamic>)
          .map((e) => Mission.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CouponImplToJson(_$CouponImpl instance) =>
    <String, dynamic>{
      'useDate': instance.useDate,
      'status': instance.couponStatus,
      'couponId': instance.couponId,
      'userNickname': instance.userNickname,
      'reward': instance.reward.toJson(),
      'missions': instance.missions.map((e) => e.toJson()).toList(),
    };
