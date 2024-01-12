// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_market_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetMarketDTO _$GetMarketDTOFromJson(Map<String, dynamic> json) {
  return _GetMarketDTO.fromJson(json);
}

/// @nodoc
mixin _$GetMarketDTO {
  @JsonKey(name: 'district', defaultValue: '')
  String get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'president', defaultValue: '')
  String get president => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMarketDTOCopyWith<GetMarketDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMarketDTOCopyWith<$Res> {
  factory $GetMarketDTOCopyWith(
          GetMarketDTO value, $Res Function(GetMarketDTO) then) =
      _$GetMarketDTOCopyWithImpl<$Res, GetMarketDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'district', defaultValue: '') String district,
      @JsonKey(name: 'president', defaultValue: '') String president});
}

/// @nodoc
class _$GetMarketDTOCopyWithImpl<$Res, $Val extends GetMarketDTO>
    implements $GetMarketDTOCopyWith<$Res> {
  _$GetMarketDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$GetMarketDTOImplCopyWith<$Res>
    implements $GetMarketDTOCopyWith<$Res> {
  factory _$$GetMarketDTOImplCopyWith(
          _$GetMarketDTOImpl value, $Res Function(_$GetMarketDTOImpl) then) =
      __$$GetMarketDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'district', defaultValue: '') String district,
      @JsonKey(name: 'president', defaultValue: '') String president});
}

/// @nodoc
class __$$GetMarketDTOImplCopyWithImpl<$Res>
    extends _$GetMarketDTOCopyWithImpl<$Res, _$GetMarketDTOImpl>
    implements _$$GetMarketDTOImplCopyWith<$Res> {
  __$$GetMarketDTOImplCopyWithImpl(
      _$GetMarketDTOImpl _value, $Res Function(_$GetMarketDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? district = null,
    Object? president = null,
  }) {
    return _then(_$GetMarketDTOImpl(
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
class _$GetMarketDTOImpl implements _GetMarketDTO {
  const _$GetMarketDTOImpl(
      {@JsonKey(name: 'district', defaultValue: '') required this.district,
      @JsonKey(name: 'president', defaultValue: '') required this.president});

  factory _$GetMarketDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetMarketDTOImplFromJson(json);

  @override
  @JsonKey(name: 'district', defaultValue: '')
  final String district;
  @override
  @JsonKey(name: 'president', defaultValue: '')
  final String president;

  @override
  String toString() {
    return 'GetMarketDTO(district: $district, president: $president)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMarketDTOImpl &&
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
  _$$GetMarketDTOImplCopyWith<_$GetMarketDTOImpl> get copyWith =>
      __$$GetMarketDTOImplCopyWithImpl<_$GetMarketDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetMarketDTOImplToJson(
      this,
    );
  }
}

abstract class _GetMarketDTO implements GetMarketDTO {
  const factory _GetMarketDTO(
      {@JsonKey(name: 'district', defaultValue: '')
      required final String district,
      @JsonKey(name: 'president', defaultValue: '')
      required final String president}) = _$GetMarketDTOImpl;

  factory _GetMarketDTO.fromJson(Map<String, dynamic> json) =
      _$GetMarketDTOImpl.fromJson;

  @override
  @JsonKey(name: 'district', defaultValue: '')
  String get district;
  @override
  @JsonKey(name: 'president', defaultValue: '')
  String get president;
  @override
  @JsonKey(ignore: true)
  _$$GetMarketDTOImplCopyWith<_$GetMarketDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
