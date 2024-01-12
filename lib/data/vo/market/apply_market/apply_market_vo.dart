import 'package:freezed_annotation/freezed_annotation.dart';

part 'apply_market_vo.freezed.dart';
part 'apply_market_vo.g.dart';

@freezed
class ApplyMarketVO with _$ApplyMarketVO {

  const factory ApplyMarketVO({
    @JsonKey(name: 'marketId', defaultValue: '') required String marketId,
  }) = _ApplyMarketVO;

  factory ApplyMarketVO.fromJson(Map<String, dynamic> json) =>
      _$ApplyMarketVOFromJson(json);
}