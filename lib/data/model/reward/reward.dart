import 'package:freezed_annotation/freezed_annotation.dart';

part 'reward.freezed.dart';
part 'reward.g.dart';

@freezed
class Reward with _$Reward {

  const factory Reward({
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'target', defaultValue: '') required String target,
    @JsonKey(name: 'type', defaultValue: '') required String rewardTypeStr,
    @JsonKey(name: 'quantity') int? quantity,
    @JsonKey(name: 'discountRate') int? discountRate,
  }) = _Reward;

  factory Reward.fromJson(Map<String, dynamic> json) =>
      _$RewardFromJson(json);
}

enum RewardType {
  discount,
  giftCard;

  RewardType rewardTypeFromString(String str) {
    if (str == 'GIFT') {
      return RewardType.giftCard;
    } else {
      return RewardType.discount;
    }
  }

  String get text => switch (this) {
        RewardType.discount => '할인권',
        RewardType.giftCard => '증정권',
      };

  String get subTitle => switch (this) {
        RewardType.discount => '할인율',
        RewardType.giftCard => '개수',
      };

  String get subText => switch (this) {
        RewardType.discount => '%',
        RewardType.giftCard => '개',
      };

      String get jsonText => switch (this) {
        RewardType.discount => 'DISCOUNT',
        RewardType.giftCard => 'GIFT',
      };
}