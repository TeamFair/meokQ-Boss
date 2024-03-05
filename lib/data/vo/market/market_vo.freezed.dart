// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MarketVO _$MarketVOFromJson(Map<String, dynamic> json) {
  return _MarketVO.fromJson(json);
}

/// @nodoc
mixin _$MarketVO {
  @JsonKey(name: 'marketId', defaultValue: '')
  String get marketId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name', defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone', defaultValue: '')
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'district', defaultValue: '')
  String get district => throw _privateConstructorUsedError;
  @JsonKey(name: 'address', defaultValue: '')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', defaultValue: '')
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketVOCopyWith<MarketVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketVOCopyWith<$Res> {
  factory $MarketVOCopyWith(MarketVO value, $Res Function(MarketVO) then) =
      _$MarketVOCopyWithImpl<$Res, MarketVO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'marketId', defaultValue: '') String marketId,
      @JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'phone', defaultValue: '') String phone,
      @JsonKey(name: 'district', defaultValue: '') String district,
      @JsonKey(name: 'address', defaultValue: '') String address,
      @JsonKey(name: 'status', defaultValue: '') String status});
}

/// @nodoc
class _$MarketVOCopyWithImpl<$Res, $Val extends MarketVO>
    implements $MarketVOCopyWith<$Res> {
  _$MarketVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketId = null,
    Object? name = null,
    Object? phone = null,
    Object? district = null,
    Object? address = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      marketId: null == marketId
          ? _value.marketId
          : marketId // ignore: cast_nullable_to_non_nullable
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarketVOImplCopyWith<$Res>
    implements $MarketVOCopyWith<$Res> {
  factory _$$MarketVOImplCopyWith(
          _$MarketVOImpl value, $Res Function(_$MarketVOImpl) then) =
      __$$MarketVOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'marketId', defaultValue: '') String marketId,
      @JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'phone', defaultValue: '') String phone,
      @JsonKey(name: 'district', defaultValue: '') String district,
      @JsonKey(name: 'address', defaultValue: '') String address,
      @JsonKey(name: 'status', defaultValue: '') String status});
}

/// @nodoc
class __$$MarketVOImplCopyWithImpl<$Res>
    extends _$MarketVOCopyWithImpl<$Res, _$MarketVOImpl>
    implements _$$MarketVOImplCopyWith<$Res> {
  __$$MarketVOImplCopyWithImpl(
      _$MarketVOImpl _value, $Res Function(_$MarketVOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketId = null,
    Object? name = null,
    Object? phone = null,
    Object? district = null,
    Object? address = null,
    Object? status = null,
  }) {
    return _then(_$MarketVOImpl(
      marketId: null == marketId
          ? _value.marketId
          : marketId // ignore: cast_nullable_to_non_nullable
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketVOImpl implements _MarketVO {
  const _$MarketVOImpl(
      {@JsonKey(name: 'marketId', defaultValue: '') required this.marketId,
      @JsonKey(name: 'name', defaultValue: '') required this.name,
      @JsonKey(name: 'phone', defaultValue: '') required this.phone,
      @JsonKey(name: 'district', defaultValue: '') required this.district,
      @JsonKey(name: 'address', defaultValue: '') required this.address,
      @JsonKey(name: 'status', defaultValue: '') required this.status});

  factory _$MarketVOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketVOImplFromJson(json);

  @override
  @JsonKey(name: 'marketId', defaultValue: '')
  final String marketId;
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
  @override
  @JsonKey(name: 'status', defaultValue: '')
  final String status;

  @override
  String toString() {
    return 'MarketVO(marketId: $marketId, name: $name, phone: $phone, district: $district, address: $address, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketVOImpl &&
            (identical(other.marketId, marketId) ||
                other.marketId == marketId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, marketId, name, phone, district, address, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketVOImplCopyWith<_$MarketVOImpl> get copyWith =>
      __$$MarketVOImplCopyWithImpl<_$MarketVOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketVOImplToJson(
      this,
    );
  }
}

abstract class _MarketVO implements MarketVO {
  const factory _MarketVO(
      {@JsonKey(name: 'marketId', defaultValue: '')
      required final String marketId,
      @JsonKey(name: 'name', defaultValue: '') required final String name,
      @JsonKey(name: 'phone', defaultValue: '') required final String phone,
      @JsonKey(name: 'district', defaultValue: '')
      required final String district,
      @JsonKey(name: 'address', defaultValue: '') required final String address,
      @JsonKey(name: 'status', defaultValue: '')
      required final String status}) = _$MarketVOImpl;

  factory _MarketVO.fromJson(Map<String, dynamic> json) =
      _$MarketVOImpl.fromJson;

  @override
  @JsonKey(name: 'marketId', defaultValue: '')
  String get marketId;
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
  @JsonKey(name: 'status', defaultValue: '')
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$MarketVOImplCopyWith<_$MarketVOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
