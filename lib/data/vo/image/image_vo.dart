import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_vo.freezed.dart';
part 'image_vo.g.dart';

@freezed
class ImageVO with _$ImageVO {

  const factory ImageVO({
    @JsonKey(name: 'imageId', defaultValue: '') required String imageId,
    @JsonKey(name: 'location', defaultValue: '') required String location,
  }) = _ImageVO;

  factory ImageVO.fromJson(Map<String, dynamic> json) =>
      _$ImageVOFromJson(json);
}