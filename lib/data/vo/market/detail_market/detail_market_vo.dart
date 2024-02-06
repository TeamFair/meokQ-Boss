import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meokq_boss/data/dto/market/apply_market/market_time.dart';

part 'detail_market_vo.freezed.dart';
part 'detail_market_vo.g.dart';

@freezed
class DetailMarketVO with _$DetailMarketVO {

  const factory DetailMarketVO({
    @JsonKey(name: 'marketId', defaultValue: '') required String marketId,
    @JsonKey(name: 'name', defaultValue: '') required String name,
    @JsonKey(name: 'phone', defaultValue: '') required String phone,
    @JsonKey(name: 'district', defaultValue: '') required String district,
    @JsonKey(name: 'address', defaultValue: '') required String address,
    @JsonKey(name: 'status', defaultValue: '') required String status,
    @JsonKey(name: 'ticketCount', defaultValue: 0) required int ticketCount,
    @JsonKey(name: 'logoImageId', defaultValue: '') required String logoImageId,
    @JsonKey(name: 'marketTimes') required List<MarketTime> marketTimes,
  }) = _DetailMarketVO;

  factory DetailMarketVO.fromJson(Map<String, dynamic> json) =>
      _$DetailMarketVOFromJson(json);
}