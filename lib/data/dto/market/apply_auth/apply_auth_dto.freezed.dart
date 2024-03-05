// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apply_auth_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApplyAuthDTO _$ApplyAuthDTOFromJson(Map<String, dynamic> json) {
  return _ApplyAuthDTO.fromJson(json);
}

/// @nodoc
mixin _$ApplyAuthDTO {
  @JsonKey(name: 'marketId', defaultValue: '')
  String get marketId => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner')
  Owner get owner => throw _privateConstructorUsedError;
  @JsonKey(name: 'license')
  License get license => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplyAuthDTOCopyWith<ApplyAuthDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplyAuthDTOCopyWith<$Res> {
  factory $ApplyAuthDTOCopyWith(
          ApplyAuthDTO value, $Res Function(ApplyAuthDTO) then) =
      _$ApplyAuthDTOCopyWithImpl<$Res, ApplyAuthDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'marketId', defaultValue: '') String marketId,
      @JsonKey(name: 'owner') Owner owner,
      @JsonKey(name: 'license') License license});

  $OwnerCopyWith<$Res> get owner;
  $LicenseCopyWith<$Res> get license;
}

/// @nodoc
class _$ApplyAuthDTOCopyWithImpl<$Res, $Val extends ApplyAuthDTO>
    implements $ApplyAuthDTOCopyWith<$Res> {
  _$ApplyAuthDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketId = null,
    Object? owner = null,
    Object? license = null,
  }) {
    return _then(_value.copyWith(
      marketId: null == marketId
          ? _value.marketId
          : marketId // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      license: null == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as License,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<$Res> get owner {
    return $OwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LicenseCopyWith<$Res> get license {
    return $LicenseCopyWith<$Res>(_value.license, (value) {
      return _then(_value.copyWith(license: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApplyAuthDTOImplCopyWith<$Res>
    implements $ApplyAuthDTOCopyWith<$Res> {
  factory _$$ApplyAuthDTOImplCopyWith(
          _$ApplyAuthDTOImpl value, $Res Function(_$ApplyAuthDTOImpl) then) =
      __$$ApplyAuthDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'marketId', defaultValue: '') String marketId,
      @JsonKey(name: 'owner') Owner owner,
      @JsonKey(name: 'license') License license});

  @override
  $OwnerCopyWith<$Res> get owner;
  @override
  $LicenseCopyWith<$Res> get license;
}

/// @nodoc
class __$$ApplyAuthDTOImplCopyWithImpl<$Res>
    extends _$ApplyAuthDTOCopyWithImpl<$Res, _$ApplyAuthDTOImpl>
    implements _$$ApplyAuthDTOImplCopyWith<$Res> {
  __$$ApplyAuthDTOImplCopyWithImpl(
      _$ApplyAuthDTOImpl _value, $Res Function(_$ApplyAuthDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketId = null,
    Object? owner = null,
    Object? license = null,
  }) {
    return _then(_$ApplyAuthDTOImpl(
      marketId: null == marketId
          ? _value.marketId
          : marketId // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      license: null == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as License,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApplyAuthDTOImpl implements _ApplyAuthDTO {
  const _$ApplyAuthDTOImpl(
      {@JsonKey(name: 'marketId', defaultValue: '') required this.marketId,
      @JsonKey(name: 'owner') required this.owner,
      @JsonKey(name: 'license') required this.license});

  factory _$ApplyAuthDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApplyAuthDTOImplFromJson(json);

  @override
  @JsonKey(name: 'marketId', defaultValue: '')
  final String marketId;
  @override
  @JsonKey(name: 'owner')
  final Owner owner;
  @override
  @JsonKey(name: 'license')
  final License license;

  @override
  String toString() {
    return 'ApplyAuthDTO(marketId: $marketId, owner: $owner, license: $license)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplyAuthDTOImpl &&
            (identical(other.marketId, marketId) ||
                other.marketId == marketId) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.license, license) || other.license == license));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, marketId, owner, license);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplyAuthDTOImplCopyWith<_$ApplyAuthDTOImpl> get copyWith =>
      __$$ApplyAuthDTOImplCopyWithImpl<_$ApplyAuthDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApplyAuthDTOImplToJson(
      this,
    );
  }
}

abstract class _ApplyAuthDTO implements ApplyAuthDTO {
  const factory _ApplyAuthDTO(
          {@JsonKey(name: 'marketId', defaultValue: '')
          required final String marketId,
          @JsonKey(name: 'owner') required final Owner owner,
          @JsonKey(name: 'license') required final License license}) =
      _$ApplyAuthDTOImpl;

  factory _ApplyAuthDTO.fromJson(Map<String, dynamic> json) =
      _$ApplyAuthDTOImpl.fromJson;

  @override
  @JsonKey(name: 'marketId', defaultValue: '')
  String get marketId;
  @override
  @JsonKey(name: 'owner')
  Owner get owner;
  @override
  @JsonKey(name: 'license')
  License get license;
  @override
  @JsonKey(ignore: true)
  _$$ApplyAuthDTOImplCopyWith<_$ApplyAuthDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
