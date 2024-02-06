import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner.freezed.dart';
part 'owner.g.dart';

@freezed
class Owner with _$Owner {

  const factory Owner({
    @JsonKey(name: 'name', defaultValue: '') required String name,
    @JsonKey(name: 'birthdate', defaultValue: '') required String birthdate,
    @JsonKey(name: 'idcardImageId', defaultValue: '') required String idcardImageId,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) =>
      _$OwnerFromJson(json);
}