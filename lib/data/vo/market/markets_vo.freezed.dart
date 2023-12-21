// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'markets_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MarketsVO _$MarketsVOFromJson(Map<String, dynamic> json) {
  return _MarketsVO.fromJson(json);
}

/// @nodoc
mixin _$MarketsVO {
  List<MarketVO> get marketList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketsVOCopyWith<MarketsVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketsVOCopyWith<$Res> {
  factory $MarketsVOCopyWith(MarketsVO value, $Res Function(MarketsVO) then) =
      _$MarketsVOCopyWithImpl<$Res, MarketsVO>;
  @useResult
  $Res call({List<MarketVO> marketList});
}

/// @nodoc
class _$MarketsVOCopyWithImpl<$Res, $Val extends MarketsVO>
    implements $MarketsVOCopyWith<$Res> {
  _$MarketsVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketList = null,
  }) {
    return _then(_value.copyWith(
      marketList: null == marketList
          ? _value.marketList
          : marketList // ignore: cast_nullable_to_non_nullable
              as List<MarketVO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarketsVOImplCopyWith<$Res>
    implements $MarketsVOCopyWith<$Res> {
  factory _$$MarketsVOImplCopyWith(
          _$MarketsVOImpl value, $Res Function(_$MarketsVOImpl) then) =
      __$$MarketsVOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MarketVO> marketList});
}

/// @nodoc
class __$$MarketsVOImplCopyWithImpl<$Res>
    extends _$MarketsVOCopyWithImpl<$Res, _$MarketsVOImpl>
    implements _$$MarketsVOImplCopyWith<$Res> {
  __$$MarketsVOImplCopyWithImpl(
      _$MarketsVOImpl _value, $Res Function(_$MarketsVOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketList = null,
  }) {
    return _then(_$MarketsVOImpl(
      marketList: null == marketList
          ? _value._marketList
          : marketList // ignore: cast_nullable_to_non_nullable
              as List<MarketVO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketsVOImpl implements _MarketsVO {
  const _$MarketsVOImpl({required final List<MarketVO> marketList})
      : _marketList = marketList;

  factory _$MarketsVOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketsVOImplFromJson(json);

  final List<MarketVO> _marketList;
  @override
  List<MarketVO> get marketList {
    if (_marketList is EqualUnmodifiableListView) return _marketList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_marketList);
  }

  @override
  String toString() {
    return 'MarketsVO(marketList: $marketList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketsVOImpl &&
            const DeepCollectionEquality()
                .equals(other._marketList, _marketList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_marketList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketsVOImplCopyWith<_$MarketsVOImpl> get copyWith =>
      __$$MarketsVOImplCopyWithImpl<_$MarketsVOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketsVOImplToJson(
      this,
    );
  }
}

abstract class _MarketsVO implements MarketsVO {
  const factory _MarketsVO({required final List<MarketVO> marketList}) =
      _$MarketsVOImpl;

  factory _MarketsVO.fromJson(Map<String, dynamic> json) =
      _$MarketsVOImpl.fromJson;

  @override
  List<MarketVO> get marketList;
  @override
  @JsonKey(ignore: true)
  _$$MarketsVOImplCopyWith<_$MarketsVOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
