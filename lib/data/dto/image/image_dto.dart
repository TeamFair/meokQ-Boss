import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_dto.freezed.dart';
part 'image_dto.g.dart';

@freezed
class ImageDTO with _$ImageDTO {

  const factory ImageDTO({
    @JsonKey(name: 'type', defaultValue: '') required String type,
    @JsonKey(name: 'file', defaultValue: '') required String file,
  }) = _ImageDTO;

  factory ImageDTO.fromJson(Map<String, dynamic> json) =>
      _$ImageDTOFromJson(json);
}