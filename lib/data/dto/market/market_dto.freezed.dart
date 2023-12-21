// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MarketDTO _$MarketDTOFromJson(Map<String, dynamic> json) {
  return _MarketDTO.fromJson(json);
}

/// @nodoc
mixin _$MarketDTO {
  @JsonKey(name: 'district', defaultValue: '')
  String get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'president', defaultValue: '')
  String get president => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketDTOCopyWith<MarketDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketDTOCopyWith<$Res> {
  factory $MarketDTOCopyWith(MarketDTO value, $Res Function(MarketDTO) then) =
      _$MarketDTOCopyWithImpl<$Res, MarketDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'district', defaultValue: '') String district,
      @JsonKey(name: 'president', defaultValue: '') String president});
}

/// @nodoc
class _$MarketDTOCopyWithImpl<$Res, $Val extends MarketDTO>
    implements $MarketDTOCopyWith<$Res> {
  _$MarketDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? district = null,
    Object? president = null,
  }) {
    return _then(_value.copyWith(
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
      president: null == president
          ? _value.president
          : president // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarketDTOImplCopyWith<$Res>
    implements $MarketDTOCopyWith<$Res> {
  factory _$$MarketDTOImplCopyWith(
          _$MarketDTOImpl value, $Res Function(_$MarketDTOImpl) then) =
      __$$MarketDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'district', defaultValue: '') String district,
      @JsonKey(name: 'president', defaultValue: '') String president});
}

/// @nodoc
class __$$MarketDTOImplCopyWithImpl<$Res>
    extends _$MarketDTOCopyWithImpl<$Res, _$MarketDTOImpl>
    implements _$$MarketDTOImplCopyWith<$Res> {
  __$$MarketDTOImplCopyWithImpl(
      _$MarketDTOImpl _value, $Res Function(_$MarketDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? district = null,
    Object? president = null,
  }) {
    return _then(_$MarketDTOImpl(
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
      president: null == president
          ? _value.president
          : president // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketDTOImpl implements _MarketDTO {
  const _$MarketDTOImpl(
      {@JsonKey(name: 'district', defaultValue: '') required this.district,
      @JsonKey(name: 'president', defaultValue: '') required this.president});

  factory _$MarketDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketDTOImplFromJson(json);

  @override
  @JsonKey(name: 'district', defaultValue: '')
  final String district;
  @override
  @JsonKey(name: 'president', defaultValue: '')
  final String president;

  @override
  String toString() {
    return 'MarketDTO(district: $district, president: $president)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketDTOImpl &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.president, president) ||
                other.president == president));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, district, president);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketDTOImplCopyWith<_$MarketDTOImpl> get copyWith =>
      __$$MarketDTOImplCopyWithImpl<_$MarketDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketDTOImplToJson(
      this,
    );
  }
}

abstract class _MarketDTO implements MarketDTO {
  const factory _MarketDTO(
      {@JsonKey(name: 'district', defaultValue: '')
      required final String district,
      @JsonKey(name: 'president', defaultValue: '')
      required final String president}) = _$MarketDTOImpl;

  factory _MarketDTO.fromJson(Map<String, dynamic> json) =
      _$MarketDTOImpl.fromJson;

  @override
  @JsonKey(name: 'district', defaultValue: '')
  String get district;
  @override
  @JsonKey(name: 'president', defaultValue: '')
  String get president;
  @override
  @JsonKey(ignore: true)
  _$$MarketDTOImplCopyWith<_$MarketDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
