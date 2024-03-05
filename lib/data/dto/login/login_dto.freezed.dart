// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginDTO _$LoginDTOFromJson(Map<String, dynamic> json) {
  return _LoginDTO.fromJson(json);
}

/// @nodoc
mixin _$LoginDTO {
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'channel')
  String get channel => throw _privateConstructorUsedError;
  @JsonKey(name: 'accessToken')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refreshToken')
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'userType', defaultValue: 'BOSS')
  String get userType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginDTOCopyWith<LoginDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDTOCopyWith<$Res> {
  factory $LoginDTOCopyWith(LoginDTO value, $Res Function(LoginDTO) then) =
      _$LoginDTOCopyWithImpl<$Res, LoginDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'channel') String channel,
      @JsonKey(name: 'accessToken') String accessToken,
      @JsonKey(name: 'refreshToken') String refreshToken,
      @JsonKey(name: 'userType', defaultValue: 'BOSS') String userType});
}

/// @nodoc
class _$LoginDTOCopyWithImpl<$Res, $Val extends LoginDTO>
    implements $LoginDTOCopyWith<$Res> {
  _$LoginDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? channel = null,
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? userType = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginDTOImplCopyWith<$Res>
    implements $LoginDTOCopyWith<$Res> {
  factory _$$LoginDTOImplCopyWith(
          _$LoginDTOImpl value, $Res Function(_$LoginDTOImpl) then) =
      __$$LoginDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'channel') String channel,
      @JsonKey(name: 'accessToken') String accessToken,
      @JsonKey(name: 'refreshToken') String refreshToken,
      @JsonKey(name: 'userType', defaultValue: 'BOSS') String userType});
}

/// @nodoc
class __$$LoginDTOImplCopyWithImpl<$Res>
    extends _$LoginDTOCopyWithImpl<$Res, _$LoginDTOImpl>
    implements _$$LoginDTOImplCopyWith<$Res> {
  __$$LoginDTOImplCopyWithImpl(
      _$LoginDTOImpl _value, $Res Function(_$LoginDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? channel = null,
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? userType = null,
  }) {
    return _then(_$LoginDTOImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginDTOImpl implements _LoginDTO {
  const _$LoginDTOImpl(
      {@JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'channel') required this.channel,
      @JsonKey(name: 'accessToken') required this.accessToken,
      @JsonKey(name: 'refreshToken') required this.refreshToken,
      @JsonKey(name: 'userType', defaultValue: 'BOSS') required this.userType});

  factory _$LoginDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginDTOImplFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'channel')
  final String channel;
  @override
  @JsonKey(name: 'accessToken')
  final String accessToken;
  @override
  @JsonKey(name: 'refreshToken')
  final String refreshToken;
  @override
  @JsonKey(name: 'userType', defaultValue: 'BOSS')
  final String userType;

  @override
  String toString() {
    return 'LoginDTO(email: $email, channel: $channel, accessToken: $accessToken, refreshToken: $refreshToken, userType: $userType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginDTOImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.userType, userType) ||
                other.userType == userType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, email, channel, accessToken, refreshToken, userType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginDTOImplCopyWith<_$LoginDTOImpl> get copyWith =>
      __$$LoginDTOImplCopyWithImpl<_$LoginDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginDTOImplToJson(
      this,
    );
  }
}

abstract class _LoginDTO implements LoginDTO {
  const factory _LoginDTO(
      {@JsonKey(name: 'email') required final String email,
      @JsonKey(name: 'channel') required final String channel,
      @JsonKey(name: 'accessToken') required final String accessToken,
      @JsonKey(name: 'refreshToken') required final String refreshToken,
      @JsonKey(name: 'userType', defaultValue: 'BOSS')
      required final String userType}) = _$LoginDTOImpl;

  factory _LoginDTO.fromJson(Map<String, dynamic> json) =
      _$LoginDTOImpl.fromJson;

  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'channel')
  String get channel;
  @override
  @JsonKey(name: 'accessToken')
  String get accessToken;
  @override
  @JsonKey(name: 'refreshToken')
  String get refreshToken;
  @override
  @JsonKey(name: 'userType', defaultValue: 'BOSS')
  String get userType;
  @override
  @JsonKey(ignore: true)
  _$$LoginDTOImplCopyWith<_$LoginDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
