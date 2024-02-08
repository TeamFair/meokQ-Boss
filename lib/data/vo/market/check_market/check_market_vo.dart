import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_market_vo.freezed.dart';
part 'check_market_vo.g.dart';

@freezed
class CheckMarketVO with _$CheckMarketVO {

  const factory CheckMarketVO({
      @JsonKey(name: 'marketId', defaultValue: '') required String marketId,
      @JsonKey(name: 'reviewResult', defaultValue: '') required String reviewResult,
      @JsonKey(name: 'comment', defaultValue: '') required String comment,
  }) = _CheckMarketVO;

  factory CheckMarketVO.fromJson(Map<String, dynamic> json) =>
      _$CheckMarketVOFromJson(json);
}