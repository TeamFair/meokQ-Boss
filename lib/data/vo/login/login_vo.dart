import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_vo.freezed.dart';
part 'login_vo.g.dart';

@freezed
class LoginVO with _$LoginVO {
  const factory LoginVO({
    @JsonKey(name: 'authorization', defaultValue: '')
    required String authorization,
  }) = _LoginVO;

  factory LoginVO.fromJson(Map<String, dynamic> json) =>
      _$LoginVOFromJson(json);
}
