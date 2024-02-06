import 'package:freezed_annotation/freezed_annotation.dart';

part 'license.freezed.dart';
part 'license.g.dart';

@freezed
class License with _$License {

  const factory License({
    @JsonKey(name: 'licenseId', defaultValue: '') required String licenseId,
    @JsonKey(name: 'licenseImageId', defaultValue: '') required String licenseImageId,
    @JsonKey(name: 'ownerName', defaultValue: '') required String ownerName,
    @JsonKey(name: 'marketName', defaultValue: '') required String marketName,
    @JsonKey(name: 'address', defaultValue: '') required String address,
    @JsonKey(name: 'postalCode', defaultValue: '') required String postalCode,
  }) = _License;

  factory License.fromJson(Map<String, dynamic> json) =>
      _$LicenseFromJson(json);
}