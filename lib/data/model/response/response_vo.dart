import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_vo.freezed.dart';
part 'response_vo.g.dart';

@freezed
class ResponseVO with _$ResponseVO {

  const factory ResponseVO({
    @JsonKey(name: 'data') dynamic data,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'message') String? message,
  }) = _ResponseVO;

  factory ResponseVO.fromJson(Map<String, dynamic> json) =>
      _$ResponseVOFromJson(json);
}