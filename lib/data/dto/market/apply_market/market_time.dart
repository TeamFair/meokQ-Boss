import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_time.freezed.dart';
part 'market_time.g.dart';

@freezed
class MarketTime with _$MarketTime {

  const factory MarketTime({
    @JsonKey(name: 'weekDay', defaultValue: '') required String weekDay,
    @JsonKey(name: 'openTime', defaultValue: '') required String openTime,
    @JsonKey(name: 'closeTime', defaultValue: '') required String closeTime,
    @JsonKey(name: 'holidayYn', defaultValue: '') required String holidayYn,
  }) = _MarketTime;

  factory MarketTime.fromJson(Map<String, dynamic> json) =>
      _$MarketTimeFromJson(json);
}