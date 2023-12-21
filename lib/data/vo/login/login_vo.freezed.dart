// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginVO _$LoginVOFromJson(Map<String, dynamic> json) {
  return _LoginVO.fromJson(json);
}

/// @nodoc
mixin _$LoginVO {
  @JsonKey(name: 'authorization', defaultValue: '')
  String get authorization => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginVOCopyWith<LoginVO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginVOCopyWith<$Res> {
  factory $LoginVOCopyWith(LoginVO value, $Res Function(LoginVO) then) =
      _$LoginVOCopyWithImpl<$Res, LoginVO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'authorization', defaultValue: '') String authorization});
}

/// @nodoc
class _$LoginVOCopyWithImpl<$Res, $Val extends LoginVO>
    implements $LoginVOCopyWith<$Res> {
  _$LoginVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorization = null,
  }) {
    return _then(_value.copyWith(
      authorization: null == authorization
          ? _value.authorization
          : authorization // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginVOImplCopyWith<$Res> implements $LoginVOCopyWith<$Res> {
  factory _$$LoginVOImplCopyWith(
          _$LoginVOImpl value, $Res Function(_$LoginVOImpl) then) =
      __$$LoginVOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'authorization', defaultValue: '') String authorization});
}

/// @nodoc
class __$$LoginVOImplCopyWithImpl<$Res>
    extends _$LoginVOCopyWithImpl<$Res, _$LoginVOImpl>
    implements _$$LoginVOImplCopyWith<$Res> {
  __$$LoginVOImplCopyWithImpl(
      _$LoginVOImpl _value, $Res Function(_$LoginVOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorization = null,
  }) {
    return _then(_$LoginVOImpl(
      authorization: null == authorization
          ? _value.authorization
          : authorization // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginVOImpl implements _LoginVO {
  const _$LoginVOImpl(
      {@JsonKey(name: 'authorization', defaultValue: '')
      required this.authorization});

  factory _$LoginVOImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginVOImplFromJson(json);

  @override
  @JsonKey(name: 'authorization', defaultValue: '')
  final String authorization;

  @override
  String toString() {
    return 'LoginVO(authorization: $authorization)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginVOImpl &&
            (identical(other.authorization, authorization) ||
                other.authorization == authorization));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, authorization);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginVOImplCopyWith<_$LoginVOImpl> get copyWith =>
      __$$LoginVOImplCopyWithImpl<_$LoginVOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginVOImplToJson(
      this,
    );
  }
}

abstract class _LoginVO implements LoginVO {
  const factory _LoginVO(
      {@JsonKey(name: 'authorization', defaultValue: '')
      required final String authorization}) = _$LoginVOImpl;

  factory _LoginVO.fromJson(Map<String, dynamic> json) = _$LoginVOImpl.fromJson;

  @override
  @JsonKey(name: 'authorization', defaultValue: '')
  String get authorization;
  @override
  @JsonKey(ignore: true)
  _$$LoginVOImplCopyWith<_$LoginVOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
