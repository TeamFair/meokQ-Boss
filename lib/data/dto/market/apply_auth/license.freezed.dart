// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'license.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

License _$LicenseFromJson(Map<String, dynamic> json) {
  return _License.fromJson(json);
}

/// @nodoc
mixin _$License {
  @JsonKey(name: 'licenseId', defaultValue: '')
  String get licenseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'licenseImageId', defaultValue: '')
  String get licenseImageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ownerName', defaultValue: '')
  String get ownerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'marketName', defaultValue: '')
  String get marketName => throw _privateConstructorUsedError;
  @JsonKey(name: 'address', defaultValue: '')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'postalCode', defaultValue: '')
  String get postalCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LicenseCopyWith<License> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LicenseCopyWith<$Res> {
  factory $LicenseCopyWith(License value, $Res Function(License) then) =
      _$LicenseCopyWithImpl<$Res, License>;
  @useResult
  $Res call(
      {@JsonKey(name: 'licenseId', defaultValue: '') String licenseId,
      @JsonKey(name: 'licenseImageId', defaultValue: '') String licenseImageId,
      @JsonKey(name: 'ownerName', defaultValue: '') String ownerName,
      @JsonKey(name: 'marketName', defaultValue: '') String marketName,
      @JsonKey(name: 'address', defaultValue: '') String address,
      @JsonKey(name: 'postalCode', defaultValue: '') String postalCode});
}

/// @nodoc
class _$LicenseCopyWithImpl<$Res, $Val extends License>
    implements $LicenseCopyWith<$Res> {
  _$LicenseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? licenseId = null,
    Object? licenseImageId = null,
    Object? ownerName = null,
    Object? marketName = null,
    Object? address = null,
    Object? postalCode = null,
  }) {
    return _then(_value.copyWith(
      licenseId: null == licenseId
          ? _value.licenseId
          : licenseId // ignore: cast_nullable_to_non_nullable
              as String,
      licenseImageId: null == licenseImageId
          ? _value.licenseImageId
          : licenseImageId // ignore: cast_nullable_to_non_nullable
              as String,
      ownerName: null == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      marketName: null == marketName
          ? _value.marketName
          : marketName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LicenseImplCopyWith<$Res> implements $LicenseCopyWith<$Res> {
  factory _$$LicenseImplCopyWith(
          _$LicenseImpl value, $Res Function(_$LicenseImpl) then) =
      __$$LicenseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'licenseId', defaultValue: '') String licenseId,
      @JsonKey(name: 'licenseImageId', defaultValue: '') String licenseImageId,
      @JsonKey(name: 'ownerName', defaultValue: '') String ownerName,
      @JsonKey(name: 'marketName', defaultValue: '') String marketName,
      @JsonKey(name: 'address', defaultValue: '') String address,
      @JsonKey(name: 'postalCode', defaultValue: '') String postalCode});
}

/// @nodoc
class __$$LicenseImplCopyWithImpl<$Res>
    extends _$LicenseCopyWithImpl<$Res, _$LicenseImpl>
    implements _$$LicenseImplCopyWith<$Res> {
  __$$LicenseImplCopyWithImpl(
      _$LicenseImpl _value, $Res Function(_$LicenseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? licenseId = null,
    Object? licenseImageId = null,
    Object? ownerName = null,
    Object? marketName = null,
    Object? address = null,
    Object? postalCode = null,
  }) {
    return _then(_$LicenseImpl(
      licenseId: null == licenseId
          ? _value.licenseId
          : licenseId // ignore: cast_nullable_to_non_nullable
              as String,
      licenseImageId: null == licenseImageId
          ? _value.licenseImageId
          : licenseImageId // ignore: cast_nullable_to_non_nullable
              as String,
      ownerName: null == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      marketName: null == marketName
          ? _value.marketName
          : marketName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LicenseImpl implements _License {
  const _$LicenseImpl(
      {@JsonKey(name: 'licenseId', defaultValue: '') required this.licenseId,
      @JsonKey(name: 'licenseImageId', defaultValue: '')
      required this.licenseImageId,
      @JsonKey(name: 'ownerName', defaultValue: '') required this.ownerName,
      @JsonKey(name: 'marketName', defaultValue: '') required this.marketName,
      @JsonKey(name: 'address', defaultValue: '') required this.address,
      @JsonKey(name: 'postalCode', defaultValue: '') required this.postalCode});

  factory _$LicenseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LicenseImplFromJson(json);

  @override
  @JsonKey(name: 'licenseId', defaultValue: '')
  final String licenseId;
  @override
  @JsonKey(name: 'licenseImageId', defaultValue: '')
  final String licenseImageId;
  @override
  @JsonKey(name: 'ownerName', defaultValue: '')
  final String ownerName;
  @override
  @JsonKey(name: 'marketName', defaultValue: '')
  final String marketName;
  @override
  @JsonKey(name: 'address', defaultValue: '')
  final String address;
  @override
  @JsonKey(name: 'postalCode', defaultValue: '')
  final String postalCode;

  @override
  String toString() {
    return 'License(licenseId: $licenseId, licenseImageId: $licenseImageId, ownerName: $ownerName, marketName: $marketName, address: $address, postalCode: $postalCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LicenseImpl &&
            (identical(other.licenseId, licenseId) ||
                other.licenseId == licenseId) &&
            (identical(other.licenseImageId, licenseImageId) ||
                other.licenseImageId == licenseImageId) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.marketName, marketName) ||
                other.marketName == marketName) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, licenseId, licenseImageId,
      ownerName, marketName, address, postalCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LicenseImplCopyWith<_$LicenseImpl> get copyWith =>
      __$$LicenseImplCopyWithImpl<_$LicenseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LicenseImplToJson(
      this,
    );
  }
}

abstract class _License implements License {
  const factory _License(
      {@JsonKey(name: 'licenseId', defaultValue: '')
      required final String licenseId,
      @JsonKey(name: 'licenseImageId', defaultValue: '')
      required final String licenseImageId,
      @JsonKey(name: 'ownerName', defaultValue: '')
      required final String ownerName,
      @JsonKey(name: 'marketName', defaultValue: '')
      required final String marketName,
      @JsonKey(name: 'address', defaultValue: '') required final String address,
      @JsonKey(name: 'postalCode', defaultValue: '')
      required final String postalCode}) = _$LicenseImpl;

  factory _License.fromJson(Map<String, dynamic> json) = _$LicenseImpl.fromJson;

  @override
  @JsonKey(name: 'licenseId', defaultValue: '')
  String get licenseId;
  @override
  @JsonKey(name: 'licenseImageId', defaultValue: '')
  String get licenseImageId;
  @override
  @JsonKey(name: 'ownerName', defaultValue: '')
  String get ownerName;
  @override
  @JsonKey(name: 'marketName', defaultValue: '')
  String get marketName;
  @override
  @JsonKey(name: 'address', defaultValue: '')
  String get address;
  @override
  @JsonKey(name: 'postalCode', defaultValue: '')
  String get postalCode;
  @override
  @JsonKey(ignore: true)
  _$$LicenseImplCopyWith<_$LicenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
