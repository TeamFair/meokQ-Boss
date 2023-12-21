import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_vo.freezed.dart';
part 'market_vo.g.dart';

@freezed
class MarketVO with _$MarketVO {

  const factory MarketVO({
    @JsonKey(name: 'marketId', defaultValue: '') required String marketId,
    @JsonKey(name: 'name', defaultValue: '') required String name,
    @JsonKey(name: 'phone', defaultValue: '') required String phone,
    @JsonKey(name: 'district', defaultValue: '') required String district,
    @JsonKey(name: 'address', defaultValue: '') required String address,
    @JsonKey(name: 'status', defaultValue: '') required String status,
  }) = _MarketVO;

  factory MarketVO.fromJson(Map<String, dynamic> json) =>
      _$MarketVOFromJson(json);
}