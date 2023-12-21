import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meokq_boss/data/vo/market/market_vo.dart';

part 'markets_vo.freezed.dart';
part 'markets_vo.g.dart';

@freezed
class MarketsVO with _$MarketsVO {

  const factory MarketsVO({
    required List<MarketVO> marketList,
  }) = _MarketsVO;

  factory MarketsVO.fromJson(Map<String, dynamic> json) =>
      _$MarketsVOFromJson(json);
}