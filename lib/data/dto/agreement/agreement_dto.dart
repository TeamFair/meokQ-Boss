import 'package:freezed_annotation/freezed_annotation.dart';

part 'agreement_dto.freezed.dart';
part 'agreement_dto.g.dart';

@freezed
class AgreementDTO with _$AgreementDTO {

  const factory AgreementDTO({
    @JsonKey(name: 'version', defaultValue: 0) required int version,
    @JsonKey(name: 'agreementType') required String agreementType,
    @JsonKey(name: 'acceptYn') required String acceptYn,
  }) = _AgreementDTO;

  factory AgreementDTO.fromJson(Map<String, dynamic> json) =>
      _$AgreementDTOFromJson(json);
}