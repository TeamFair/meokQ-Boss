import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_dto.freezed.dart';
part 'login_dto.g.dart';

@freezed
class LoginDTO with _$LoginDTO {

  const factory LoginDTO({
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'channel') required String channel,
    @JsonKey(name: 'accessToken') required String accessToken,
    @JsonKey(name: 'refreshToken') required String refreshToken,
    @JsonKey(name: 'userType', defaultValue: 'BOSS') required String userType,
  }) = _LoginDTO;

  factory LoginDTO.fromJson(Map<String, dynamic> json) =>
      _$LoginDTOFromJson(json);
}