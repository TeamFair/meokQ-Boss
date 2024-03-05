// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apply_market_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApplyMarketVO _$ApplyMarketVOFromJson(Map<String, dynamic> json) {
  return _ApplyMarketVO.fromJson(json);
}

/// @nodoc
mixin _$ApplyMarketVO {
  @JsonKey(name: 'marketId', defaultValue: '')
  String get marketId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplyMarketVOCopyWith<ApplyMarketVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplyMarketVOCopyWith<$Res> {
  factory $ApplyMarketVOCopyWith(
          ApplyMarketVO value, $Res Function(ApplyMarketVO) then) =
      _$ApplyMarketVOCopyWithImpl<$Res, ApplyMarketVO>;
  @useResult
  $Res call({@JsonKey(name: 'marketId', defaultValue: '') String marketId});
}

/// @nodoc
class _$ApplyMarketVOCopyWithImpl<$Res, $Val extends ApplyMarketVO>
    implements $ApplyMarketVOCopyWith<$Res> {
  _$ApplyMarketVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketId = null,
  }) {
    return _then(_value.copyWith(
      marketId: null == marketId
          ? _value.marketId
          : marketId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApplyMarketVOImplCopyWith<$Res>
    implements $ApplyMarketVOCopyWith<$Res> {
  factory _$$ApplyMarketVOImplCopyWith(
          _$ApplyMarketVOImpl value, $Res Function(_$ApplyMarketVOImpl) then) =
      __$$ApplyMarketVOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'marketId', defaultValue: '') String marketId});
}

/// @nodoc
class __$$ApplyMarketVOImplCopyWithImpl<$Res>
    extends _$ApplyMarketVOCopyWithImpl<$Res, _$ApplyMarketVOImpl>
    implements _$$ApplyMarketVOImplCopyWith<$Res> {
  __$$ApplyMarketVOImplCopyWithImpl(
      _$ApplyMarketVOImpl _value, $Res Function(_$ApplyMarketVOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketId = null,
  }) {
    return _then(_$ApplyMarketVOImpl(
      marketId: null == marketId
          ? _value.marketId
          : marketId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApplyMarketVOImpl implements _ApplyMarketVO {
  const _$ApplyMarketVOImpl(
      {@JsonKey(name: 'marketId', defaultValue: '') required this.marketId});

  factory _$ApplyMarketVOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApplyMarketVOImplFromJson(json);

  @override
  @JsonKey(name: 'marketId', defaultValue: '')
  final String marketId;

  @override
  String toString() {
    return 'ApplyMarketVO(marketId: $marketId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplyMarketVOImpl &&
            (identical(other.marketId, marketId) ||
                other.marketId == marketId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, marketId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplyMarketVOImplCopyWith<_$ApplyMarketVOImpl> get copyWith =>
      __$$ApplyMarketVOImplCopyWithImpl<_$ApplyMarketVOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApplyMarketVOImplToJson(
      this,
    );
  }
}

abstract class _ApplyMarketVO implements ApplyMarketVO {
  const factory _ApplyMarketVO(
      {@JsonKey(name: 'marketId', defaultValue: '')
      required final String marketId}) = _$ApplyMarketVOImpl;

  factory _ApplyMarketVO.fromJson(Map<String, dynamic> json) =
      _$ApplyMarketVOImpl.fromJson;

  @override
  @JsonKey(name: 'marketId', defaultValue: '')
  String get marketId;
  @override
  @JsonKey(ignore: true)
  _$$ApplyMarketVOImplCopyWith<_$ApplyMarketVOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
