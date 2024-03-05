// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_market_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckMarketVO _$CheckMarketVOFromJson(Map<String, dynamic> json) {
  return _CheckMarketVO.fromJson(json);
}

/// @nodoc
mixin _$CheckMarketVO {
  @JsonKey(name: 'marketId', defaultValue: '')
  String get marketId => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviewResult', defaultValue: '')
  String get reviewResult => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment', defaultValue: '')
  String get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckMarketVOCopyWith<CheckMarketVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckMarketVOCopyWith<$Res> {
  factory $CheckMarketVOCopyWith(
          CheckMarketVO value, $Res Function(CheckMarketVO) then) =
      _$CheckMarketVOCopyWithImpl<$Res, CheckMarketVO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'marketId', defaultValue: '') String marketId,
      @JsonKey(name: 'reviewResult', defaultValue: '') String reviewResult,
      @JsonKey(name: 'comment', defaultValue: '') String comment});
}

/// @nodoc
class _$CheckMarketVOCopyWithImpl<$Res, $Val extends CheckMarketVO>
    implements $CheckMarketVOCopyWith<$Res> {
  _$CheckMarketVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketId = null,
    Object? reviewResult = null,
    Object? comment = null,
  }) {
    return _then(_value.copyWith(
      marketId: null == marketId
          ? _value.marketId
          : marketId // ignore: cast_nullable_to_non_nullable
              as String,
      reviewResult: null == reviewResult
          ? _value.reviewResult
          : reviewResult // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckMarketVOImplCopyWith<$Res>
    implements $CheckMarketVOCopyWith<$Res> {
  factory _$$CheckMarketVOImplCopyWith(
          _$CheckMarketVOImpl value, $Res Function(_$CheckMarketVOImpl) then) =
      __$$CheckMarketVOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'marketId', defaultValue: '') String marketId,
      @JsonKey(name: 'reviewResult', defaultValue: '') String reviewResult,
      @JsonKey(name: 'comment', defaultValue: '') String comment});
}

/// @nodoc
class __$$CheckMarketVOImplCopyWithImpl<$Res>
    extends _$CheckMarketVOCopyWithImpl<$Res, _$CheckMarketVOImpl>
    implements _$$CheckMarketVOImplCopyWith<$Res> {
  __$$CheckMarketVOImplCopyWithImpl(
      _$CheckMarketVOImpl _value, $Res Function(_$CheckMarketVOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketId = null,
    Object? reviewResult = null,
    Object? comment = null,
  }) {
    return _then(_$CheckMarketVOImpl(
      marketId: null == marketId
          ? _value.marketId
          : marketId // ignore: cast_nullable_to_non_nullable
              as String,
      reviewResult: null == reviewResult
          ? _value.reviewResult
          : reviewResult // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckMarketVOImpl implements _CheckMarketVO {
  const _$CheckMarketVOImpl(
      {@JsonKey(name: 'marketId', defaultValue: '') required this.marketId,
      @JsonKey(name: 'reviewResult', defaultValue: '')
      required this.reviewResult,
      @JsonKey(name: 'comment', defaultValue: '') required this.comment});

  factory _$CheckMarketVOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckMarketVOImplFromJson(json);

  @override
  @JsonKey(name: 'marketId', defaultValue: '')
  final String marketId;
  @override
  @JsonKey(name: 'reviewResult', defaultValue: '')
  final String reviewResult;
  @override
  @JsonKey(name: 'comment', defaultValue: '')
  final String comment;

  @override
  String toString() {
    return 'CheckMarketVO(marketId: $marketId, reviewResult: $reviewResult, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckMarketVOImpl &&
            (identical(other.marketId, marketId) ||
                other.marketId == marketId) &&
            (identical(other.reviewResult, reviewResult) ||
                other.reviewResult == reviewResult) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, marketId, reviewResult, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckMarketVOImplCopyWith<_$CheckMarketVOImpl> get copyWith =>
      __$$CheckMarketVOImplCopyWithImpl<_$CheckMarketVOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckMarketVOImplToJson(
      this,
    );
  }
}

abstract class _CheckMarketVO implements CheckMarketVO {
  const factory _CheckMarketVO(
      {@JsonKey(name: 'marketId', defaultValue: '')
      required final String marketId,
      @JsonKey(name: 'reviewResult', defaultValue: '')
      required final String reviewResult,
      @JsonKey(name: 'comment', defaultValue: '')
      required final String comment}) = _$CheckMarketVOImpl;

  factory _CheckMarketVO.fromJson(Map<String, dynamic> json) =
      _$CheckMarketVOImpl.fromJson;

  @override
  @JsonKey(name: 'marketId', defaultValue: '')
  String get marketId;
  @override
  @JsonKey(name: 'reviewResult', defaultValue: '')
  String get reviewResult;
  @override
  @JsonKey(name: 'comment', defaultValue: '')
  String get comment;
  @override
  @JsonKey(ignore: true)
  _$$CheckMarketVOImplCopyWith<_$CheckMarketVOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
