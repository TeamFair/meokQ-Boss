import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_dto.freezed.dart';
part 'market_dto.g.dart';

@freezed
class MarketDTO with _$MarketDTO {

  const factory MarketDTO({
    @JsonKey(name: 'district', defaultValue: '') required String district,
    @JsonKey(name: 'president', defaultValue: '') required String president,
  }) = _MarketDTO;

  factory MarketDTO.fromJson(Map<String, dynamic> json) =>
      _$MarketDTOFromJson(json);
}