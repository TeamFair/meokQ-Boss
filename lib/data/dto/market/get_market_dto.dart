import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_market_dto.freezed.dart';
part 'get_market_dto.g.dart';

@freezed
class GetMarketDTO with _$GetMarketDTO {
  const factory GetMarketDTO({
    @JsonKey(name: 'district', defaultValue: '') required String district,
    @JsonKey(name: 'president', defaultValue: '') required String president,
  }) = _GetMarketDTO;

  factory GetMarketDTO.fromJson(Map<String, dynamic> json) =>
      _$GetMarketDTOFromJson(json);
}
