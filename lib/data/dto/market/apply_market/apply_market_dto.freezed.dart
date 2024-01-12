// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apply_market_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApplyMarketDTO _$ApplyMarketDTOFromJson(Map<String, dynamic> json) {
  return _ApplyMarketDTO.fromJson(json);
}

/// @nodoc
mixin _$ApplyMarketDTO {
  @JsonKey(name: 'logoImageId', defaultValue: '')
  String get logoImageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone', defaultValue: '')
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'district', defaultValue: '')
  String get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'address', defaultValue: '')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'marketTime')
  List<MarketTime> get marketTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplyMarketDTOCopyWith<ApplyMarketDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplyMarketDTOCopyWith<$Res> {
  factory $ApplyMarketDTOCopyWith(
          ApplyMarketDTO value, $Res Function(ApplyMarketDTO) then) =
      _$ApplyMarketDTOCopyWithImpl<$Res, ApplyMarketDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'logoImageId', defaultValue: '') String logoImageId,
      @JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'phone', defaultValue: '') String phone,
      @JsonKey(name: 'district', defaultValue: '') String district,
      @JsonKey(name: 'address', defaultValue: '') String address,
      @JsonKey(name: 'marketTime') List<MarketTime> marketTime});
}

/// @nodoc
class _$ApplyMarketDTOCopyWithImpl<$Res, $Val extends ApplyMarketDTO>
    implements $ApplyMarketDTOCopyWith<$Res> {
  _$ApplyMarketDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logoImageId = null,
    Object? name = null,
    Object? phone = null,
    Object? district = null,
    Object? address = null,
    Object? marketTime = null,
  }) {
    return _then(_value.copyWith(
      logoImageId: null == logoImageId
          ? _value.logoImageId
          : logoImageId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      marketTime: null == marketTime
          ? _value.marketTime
          : marketTime // ignore: cast_nullable_to_non_nullable
              as List<MarketTime>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApplyMarketDTOImplCopyWith<$Res>
    implements $ApplyMarketDTOCopyWith<$Res> {
  factory _$$ApplyMarketDTOImplCopyWith(_$ApplyMarketDTOImpl value,
          $Res Function(_$ApplyMarketDTOImpl) then) =
      __$$ApplyMarketDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'logoImageId', defaultValue: '') String logoImageId,
      @JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'phone', defaultValue: '') String phone,
      @JsonKey(name: 'district', defaultValue: '') String district,
      @JsonKey(name: 'address', defaultValue: '') String address,
      @JsonKey(name: 'marketTime') List<MarketTime> marketTime});
}

/// @nodoc
class __$$ApplyMarketDTOImplCopyWithImpl<$Res>
    extends _$ApplyMarketDTOCopyWithImpl<$Res, _$ApplyMarketDTOImpl>
    implements _$$ApplyMarketDTOImplCopyWith<$Res> {
  __$$ApplyMarketDTOImplCopyWithImpl(
      _$ApplyMarketDTOImpl _value, $Res Function(_$ApplyMarketDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logoImageId = null,
    Object? name = null,
    Object? phone = null,
    Object? district = null,
    Object? address = null,
    Object? marketTime = null,
  }) {
    return _then(_$ApplyMarketDTOImpl(
      logoImageId: null == logoImageId
          ? _value.logoImageId
          : logoImageId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      district: null == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      marketTime: null == marketTime
          ? _value._marketTime
          : marketTime // ignore: cast_nullable_to_non_nullable
              as List<MarketTime>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApplyMarketDTOImpl implements _ApplyMarketDTO {
  const _$ApplyMarketDTOImpl(
      {@JsonKey(name: 'logoImageId', defaultValue: '')
      required this.logoImageId,
      @JsonKey(name: 'name', defaultValue: '') required this.name,
      @JsonKey(name: 'phone', defaultValue: '') required this.phone,
      @JsonKey(name: 'district', defaultValue: '') required this.district,
      @JsonKey(name: 'address', defaultValue: '') required this.address,
      @JsonKey(name: 'marketTime') required final List<MarketTime> marketTime})
      : _marketTime = marketTime;

  factory _$ApplyMarketDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApplyMarketDTOImplFromJson(json);

  @override
  @JsonKey(name: 'logoImageId', defaultValue: '')
  final String logoImageId;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  final String name;
  @override
  @JsonKey(name: 'phone', defaultValue: '')
  final String phone;
  @override
  @JsonKey(name: 'district', defaultValue: '')
  final String district;
  @override
  @JsonKey(name: 'address', defaultValue: '')
  final String address;
  final List<MarketTime> _marketTime;
  @override
  @JsonKey(name: 'marketTime')
  List<MarketTime> get marketTime {
    if (_marketTime is EqualUnmodifiableListView) return _marketTime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_marketTime);
  }

  @override
  String toString() {
    return 'ApplyMarketDTO(logoImageId: $logoImageId, name: $name, phone: $phone, district: $district, address: $address, marketTime: $marketTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplyMarketDTOImpl &&
            (identical(other.logoImageId, logoImageId) ||
                other.logoImageId == logoImageId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality()
                .equals(other._marketTime, _marketTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, logoImageId, name, phone,
      district, address, const DeepCollectionEquality().hash(_marketTime));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplyMarketDTOImplCopyWith<_$ApplyMarketDTOImpl> get copyWith =>
      __$$ApplyMarketDTOImplCopyWithImpl<_$ApplyMarketDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApplyMarketDTOImplToJson(
      this,
    );
  }
}

abstract class _ApplyMarketDTO implements ApplyMarketDTO {
  const factory _ApplyMarketDTO(
      {@JsonKey(name: 'logoImageId', defaultValue: '')
      required final String logoImageId,
      @JsonKey(name: 'name', defaultValue: '') required final String name,
      @JsonKey(name: 'phone', defaultValue: '') required final String phone,
      @JsonKey(name: 'district', defaultValue: '')
      required final String district,
      @JsonKey(name: 'address', defaultValue: '') required final String address,
      @JsonKey(name: 'marketTime')
      required final List<MarketTime> marketTime}) = _$ApplyMarketDTOImpl;

  factory _ApplyMarketDTO.fromJson(Map<String, dynamic> json) =
      _$ApplyMarketDTOImpl.fromJson;

  @override
  @JsonKey(name: 'logoImageId', defaultValue: '')
  String get logoImageId;
  @override
  @JsonKey(name: 'name', defaultValue: '')
  String get name;
  @override
  @JsonKey(name: 'phone', defaultValue: '')
  String get phone;
  @override
  @JsonKey(name: 'district', defaultValue: '')
  String get district;
  @override
  @JsonKey(name: 'address', defaultValue: '')
  String get address;
  @override
  @JsonKey(name: 'marketTime')
  List<MarketTime> get marketTime;
  @override
  @JsonKey(ignore: true)
  _$$ApplyMarketDTOImplCopyWith<_$ApplyMarketDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
