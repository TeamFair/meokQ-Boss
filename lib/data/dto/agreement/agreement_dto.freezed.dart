// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agreement_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AgreementDTO _$AgreementDTOFromJson(Map<String, dynamic> json) {
  return _AgreementDTO.fromJson(json);
}

/// @nodoc
mixin _$AgreementDTO {
  @JsonKey(name: 'version', defaultValue: 0)
  int get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'agreementType')
  String get agreementType => throw _privateConstructorUsedError;
  @JsonKey(name: 'acceptYn')
  String get acceptYn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgreementDTOCopyWith<AgreementDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgreementDTOCopyWith<$Res> {
  factory $AgreementDTOCopyWith(
          AgreementDTO value, $Res Function(AgreementDTO) then) =
      _$AgreementDTOCopyWithImpl<$Res, AgreementDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'version', defaultValue: 0) int version,
      @JsonKey(name: 'agreementType') String agreementType,
      @JsonKey(name: 'acceptYn') String acceptYn});
}

/// @nodoc
class _$AgreementDTOCopyWithImpl<$Res, $Val extends AgreementDTO>
    implements $AgreementDTOCopyWith<$Res> {
  _$AgreementDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? agreementType = null,
    Object? acceptYn = null,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      agreementType: null == agreementType
          ? _value.agreementType
          : agreementType // ignore: cast_nullable_to_non_nullable
              as String,
      acceptYn: null == acceptYn
          ? _value.acceptYn
          : acceptYn // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgreementDTOImplCopyWith<$Res>
    implements $AgreementDTOCopyWith<$Res> {
  factory _$$AgreementDTOImplCopyWith(
          _$AgreementDTOImpl value, $Res Function(_$AgreementDTOImpl) then) =
      __$$AgreementDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'version', defaultValue: 0) int version,
      @JsonKey(name: 'agreementType') String agreementType,
      @JsonKey(name: 'acceptYn') String acceptYn});
}

/// @nodoc
class __$$AgreementDTOImplCopyWithImpl<$Res>
    extends _$AgreementDTOCopyWithImpl<$Res, _$AgreementDTOImpl>
    implements _$$AgreementDTOImplCopyWith<$Res> {
  __$$AgreementDTOImplCopyWithImpl(
      _$AgreementDTOImpl _value, $Res Function(_$AgreementDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? agreementType = null,
    Object? acceptYn = null,
  }) {
    return _then(_$AgreementDTOImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      agreementType: null == agreementType
          ? _value.agreementType
          : agreementType // ignore: cast_nullable_to_non_nullable
              as String,
      acceptYn: null == acceptYn
          ? _value.acceptYn
          : acceptYn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgreementDTOImpl implements _AgreementDTO {
  const _$AgreementDTOImpl(
      {@JsonKey(name: 'version', defaultValue: 0) required this.version,
      @JsonKey(name: 'agreementType') required this.agreementType,
      @JsonKey(name: 'acceptYn') required this.acceptYn});

  factory _$AgreementDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgreementDTOImplFromJson(json);

  @override
  @JsonKey(name: 'version', defaultValue: 0)
  final int version;
  @override
  @JsonKey(name: 'agreementType')
  final String agreementType;
  @override
  @JsonKey(name: 'acceptYn')
  final String acceptYn;

  @override
  String toString() {
    return 'AgreementDTO(version: $version, agreementType: $agreementType, acceptYn: $acceptYn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgreementDTOImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.agreementType, agreementType) ||
                other.agreementType == agreementType) &&
            (identical(other.acceptYn, acceptYn) ||
                other.acceptYn == acceptYn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, version, agreementType, acceptYn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgreementDTOImplCopyWith<_$AgreementDTOImpl> get copyWith =>
      __$$AgreementDTOImplCopyWithImpl<_$AgreementDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgreementDTOImplToJson(
      this,
    );
  }
}

abstract class _AgreementDTO implements AgreementDTO {
  const factory _AgreementDTO(
      {@JsonKey(name: 'version', defaultValue: 0) required final int version,
      @JsonKey(name: 'agreementType') required final String agreementType,
      @JsonKey(name: 'acceptYn')
      required final String acceptYn}) = _$AgreementDTOImpl;

  factory _AgreementDTO.fromJson(Map<String, dynamic> json) =
      _$AgreementDTOImpl.fromJson;

  @override
  @JsonKey(name: 'version', defaultValue: 0)
  int get version;
  @override
  @JsonKey(name: 'agreementType')
  String get agreementType;
  @override
  @JsonKey(name: 'acceptYn')
  String get acceptYn;
  @override
  @JsonKey(ignore: true)
  _$$AgreementDTOImplCopyWith<_$AgreementDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
