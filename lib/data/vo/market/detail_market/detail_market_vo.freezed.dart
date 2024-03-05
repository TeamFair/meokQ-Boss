// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_market_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailMarketVO _$DetailMarketVOFromJson(Map<String, dynamic> json) {
  return _DetailMarketVO.fromJson(json);
}

/// @nodoc
mixin _$DetailMarketVO {
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
  @JsonKey(name: 'ticketCount', defaultValue: 0)
  int get ticketCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'logoImageId', defaultValue: '')
  String get logoImageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'marketTimes')
  List<MarketTime> get marketTimes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailMarketVOCopyWith<DetailMarketVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailMarketVOCopyWith<$Res> {
  factory $DetailMarketVOCopyWith(
          DetailMarketVO value, $Res Function(DetailMarketVO) then) =
      _$DetailMarketVOCopyWithImpl<$Res, DetailMarketVO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'marketId', defaultValue: '') String marketId,
      @JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'phone', defaultValue: '') String phone,
      @JsonKey(name: 'district', defaultValue: '') String district,
      @JsonKey(name: 'address', defaultValue: '') String address,
      @JsonKey(name: 'status', defaultValue: '') String status,
      @JsonKey(name: 'ticketCount', defaultValue: 0) int ticketCount,
      @JsonKey(name: 'logoImageId', defaultValue: '') String logoImageId,
      @JsonKey(name: 'marketTimes') List<MarketTime> marketTimes});
}

/// @nodoc
class _$DetailMarketVOCopyWithImpl<$Res, $Val extends DetailMarketVO>
    implements $DetailMarketVOCopyWith<$Res> {
  _$DetailMarketVOCopyWithImpl(this._value, this._then);

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
    Object? ticketCount = null,
    Object? logoImageId = null,
    Object? marketTimes = null,
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
      ticketCount: null == ticketCount
          ? _value.ticketCount
          : ticketCount // ignore: cast_nullable_to_non_nullable
              as int,
      logoImageId: null == logoImageId
          ? _value.logoImageId
          : logoImageId // ignore: cast_nullable_to_non_nullable
              as String,
      marketTimes: null == marketTimes
          ? _value.marketTimes
          : marketTimes // ignore: cast_nullable_to_non_nullable
              as List<MarketTime>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailMarketVOImplCopyWith<$Res>
    implements $DetailMarketVOCopyWith<$Res> {
  factory _$$DetailMarketVOImplCopyWith(_$DetailMarketVOImpl value,
          $Res Function(_$DetailMarketVOImpl) then) =
      __$$DetailMarketVOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'marketId', defaultValue: '') String marketId,
      @JsonKey(name: 'name', defaultValue: '') String name,
      @JsonKey(name: 'phone', defaultValue: '') String phone,
      @JsonKey(name: 'district', defaultValue: '') String district,
      @JsonKey(name: 'address', defaultValue: '') String address,
      @JsonKey(name: 'status', defaultValue: '') String status,
      @JsonKey(name: 'ticketCount', defaultValue: 0) int ticketCount,
      @JsonKey(name: 'logoImageId', defaultValue: '') String logoImageId,
      @JsonKey(name: 'marketTimes') List<MarketTime> marketTimes});
}

/// @nodoc
class __$$DetailMarketVOImplCopyWithImpl<$Res>
    extends _$DetailMarketVOCopyWithImpl<$Res, _$DetailMarketVOImpl>
    implements _$$DetailMarketVOImplCopyWith<$Res> {
  __$$DetailMarketVOImplCopyWithImpl(
      _$DetailMarketVOImpl _value, $Res Function(_$DetailMarketVOImpl) _then)
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
    Object? ticketCount = null,
    Object? logoImageId = null,
    Object? marketTimes = null,
  }) {
    return _then(_$DetailMarketVOImpl(
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
      ticketCount: null == ticketCount
          ? _value.ticketCount
          : ticketCount // ignore: cast_nullable_to_non_nullable
              as int,
      logoImageId: null == logoImageId
          ? _value.logoImageId
          : logoImageId // ignore: cast_nullable_to_non_nullable
              as String,
      marketTimes: null == marketTimes
          ? _value._marketTimes
          : marketTimes // ignore: cast_nullable_to_non_nullable
              as List<MarketTime>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailMarketVOImpl implements _DetailMarketVO {
  const _$DetailMarketVOImpl(
      {@JsonKey(name: 'marketId', defaultValue: '') required this.marketId,
      @JsonKey(name: 'name', defaultValue: '') required this.name,
      @JsonKey(name: 'phone', defaultValue: '') required this.phone,
      @JsonKey(name: 'district', defaultValue: '') required this.district,
      @JsonKey(name: 'address', defaultValue: '') required this.address,
      @JsonKey(name: 'status', defaultValue: '') required this.status,
      @JsonKey(name: 'ticketCount', defaultValue: 0) required this.ticketCount,
      @JsonKey(name: 'logoImageId', defaultValue: '') required this.logoImageId,
      @JsonKey(name: 'marketTimes')
      required final List<MarketTime> marketTimes})
      : _marketTimes = marketTimes;

  factory _$DetailMarketVOImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailMarketVOImplFromJson(json);

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
  @JsonKey(name: 'ticketCount', defaultValue: 0)
  final int ticketCount;
  @override
  @JsonKey(name: 'logoImageId', defaultValue: '')
  final String logoImageId;
  final List<MarketTime> _marketTimes;
  @override
  @JsonKey(name: 'marketTimes')
  List<MarketTime> get marketTimes {
    if (_marketTimes is EqualUnmodifiableListView) return _marketTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_marketTimes);
  }

  @override
  String toString() {
    return 'DetailMarketVO(marketId: $marketId, name: $name, phone: $phone, district: $district, address: $address, status: $status, ticketCount: $ticketCount, logoImageId: $logoImageId, marketTimes: $marketTimes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailMarketVOImpl &&
            (identical(other.marketId, marketId) ||
                other.marketId == marketId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.ticketCount, ticketCount) ||
                other.ticketCount == ticketCount) &&
            (identical(other.logoImageId, logoImageId) ||
                other.logoImageId == logoImageId) &&
            const DeepCollectionEquality()
                .equals(other._marketTimes, _marketTimes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      marketId,
      name,
      phone,
      district,
      address,
      status,
      ticketCount,
      logoImageId,
      const DeepCollectionEquality().hash(_marketTimes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailMarketVOImplCopyWith<_$DetailMarketVOImpl> get copyWith =>
      __$$DetailMarketVOImplCopyWithImpl<_$DetailMarketVOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailMarketVOImplToJson(
      this,
    );
  }
}

abstract class _DetailMarketVO implements DetailMarketVO {
  const factory _DetailMarketVO(
      {@JsonKey(name: 'marketId', defaultValue: '')
      required final String marketId,
      @JsonKey(name: 'name', defaultValue: '') required final String name,
      @JsonKey(name: 'phone', defaultValue: '') required final String phone,
      @JsonKey(name: 'district', defaultValue: '')
      required final String district,
      @JsonKey(name: 'address', defaultValue: '') required final String address,
      @JsonKey(name: 'status', defaultValue: '') required final String status,
      @JsonKey(name: 'ticketCount', defaultValue: 0)
      required final int ticketCount,
      @JsonKey(name: 'logoImageId', defaultValue: '')
      required final String logoImageId,
      @JsonKey(name: 'marketTimes')
      required final List<MarketTime> marketTimes}) = _$DetailMarketVOImpl;

  factory _DetailMarketVO.fromJson(Map<String, dynamic> json) =
      _$DetailMarketVOImpl.fromJson;

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
  @JsonKey(name: 'ticketCount', defaultValue: 0)
  int get ticketCount;
  @override
  @JsonKey(name: 'logoImageId', defaultValue: '')
  String get logoImageId;
  @override
  @JsonKey(name: 'marketTimes')
  List<MarketTime> get marketTimes;
  @override
  @JsonKey(ignore: true)
  _$$DetailMarketVOImplCopyWith<_$DetailMarketVOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
