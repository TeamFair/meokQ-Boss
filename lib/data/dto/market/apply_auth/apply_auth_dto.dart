import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meokq_boss/data/dto/market/apply_auth/license.dart';
import 'package:meokq_boss/data/dto/market/apply_auth/owner.dart';

part 'apply_auth_dto.freezed.dart';
part 'apply_auth_dto.g.dart';

@freezed
class ApplyAuthDTO with _$ApplyAuthDTO {

  const factory ApplyAuthDTO({
    @JsonKey(name: 'marketId', defaultValue: '') required String marketId,
    @JsonKey(name: 'owner') required Owner owner,
    @JsonKey(name: 'license') required License license,
  }) = _ApplyAuthDTO;

  factory ApplyAuthDTO.fromJson(Map<String, dynamic> json) =>
      _$ApplyAuthDTOFromJson(json);
}