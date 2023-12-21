// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseVO _$ResponseVOFromJson(Map<String, dynamic> json) {
  return _ResponseVO.fromJson(json);
}

/// @nodoc
mixin _$ResponseVO {
  @JsonKey(name: 'data')
  dynamic get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseVOCopyWith<ResponseVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseVOCopyWith<$Res> {
  factory $ResponseVOCopyWith(
          ResponseVO value, $Res Function(ResponseVO) then) =
      _$ResponseVOCopyWithImpl<$Res, ResponseVO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') dynamic data,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$ResponseVOCopyWithImpl<$Res, $Val extends ResponseVO>
    implements $ResponseVOCopyWith<$Res> {
  _$ResponseVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseVOImplCopyWith<$Res>
    implements $ResponseVOCopyWith<$Res> {
  factory _$$ResponseVOImplCopyWith(
          _$ResponseVOImpl value, $Res Function(_$ResponseVOImpl) then) =
      __$$ResponseVOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') dynamic data,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$ResponseVOImplCopyWithImpl<$Res>
    extends _$ResponseVOCopyWithImpl<$Res, _$ResponseVOImpl>
    implements _$$ResponseVOImplCopyWith<$Res> {
  __$$ResponseVOImplCopyWithImpl(
      _$ResponseVOImpl _value, $Res Function(_$ResponseVOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ResponseVOImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseVOImpl implements _ResponseVO {
  const _$ResponseVOImpl(
      {@JsonKey(name: 'data') this.data,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'message') this.message});

  factory _$ResponseVOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseVOImplFromJson(json);

  @override
  @JsonKey(name: 'data')
  final dynamic data;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'ResponseVO(data: $data, status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseVOImpl &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseVOImplCopyWith<_$ResponseVOImpl> get copyWith =>
      __$$ResponseVOImplCopyWithImpl<_$ResponseVOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseVOImplToJson(
      this,
    );
  }
}

abstract class _ResponseVO implements ResponseVO {
  const factory _ResponseVO(
      {@JsonKey(name: 'data') final dynamic data,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'message') final String? message}) = _$ResponseVOImpl;

  factory _ResponseVO.fromJson(Map<String, dynamic> json) =
      _$ResponseVOImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  dynamic get data;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ResponseVOImplCopyWith<_$ResponseVOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
