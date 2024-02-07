import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meokq_boss/data/model/mission/mission.dart';
import 'package:meokq_boss/data/model/reward/reward.dart';

part 'coupon.freezed.dart';
part 'coupon.g.dart';

enum CouponStatus {
  issued,
  used,
  expired;

  factory CouponStatus.stringToCouponStatus(String value) => switch (value) {
        'ISSUED' => CouponStatus.issued,
        'USED' => CouponStatus.used,
        _ => CouponStatus.expired,
      };

  String get text => switch (this) {
        CouponStatus.issued => '발급완료',
        CouponStatus.used => '사용완료',
        _ => '',
      };
  
  String get jsonText => switch (this) {
        CouponStatus.issued => 'ISSUED',
        CouponStatus.used => 'USED',
        _ => '',
      };

  bool get isIssued => this == CouponStatus.issued;

  bool get isUsed => this == CouponStatus.used;
}

@freezed
class Coupon with _$Coupon {
  const factory Coupon({
    @JsonKey(name: 'useDate') required String useDate,
    @JsonKey(name: 'status') required String couponStatus,
    @JsonKey(name: 'couponId') required String couponId,
    @JsonKey(name: 'userNickname') required String userNickname,
    @JsonKey(name: 'reward') required Reward reward,
    @JsonKey(name: 'missions') required List<Mission> missions,
  }) = _Coupon;

  factory Coupon.fromJson(Map<String, dynamic> json) => _$CouponFromJson(json);
}
