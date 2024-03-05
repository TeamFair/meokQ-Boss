// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageDTO _$ImageDTOFromJson(Map<String, dynamic> json) {
  return _ImageDTO.fromJson(json);
}

/// @nodoc
mixin _$ImageDTO {
  @JsonKey(name: 'type', defaultValue: '')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'file', defaultValue: '')
  String get file => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageDTOCopyWith<ImageDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDTOCopyWith<$Res> {
  factory $ImageDTOCopyWith(ImageDTO value, $Res Function(ImageDTO) then) =
      _$ImageDTOCopyWithImpl<$Res, ImageDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type', defaultValue: '') String type,
      @JsonKey(name: 'file', defaultValue: '') String file});
}

/// @nodoc
class _$ImageDTOCopyWithImpl<$Res, $Val extends ImageDTO>
    implements $ImageDTOCopyWith<$Res> {
  _$ImageDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? file = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageDTOImplCopyWith<$Res>
    implements $ImageDTOCopyWith<$Res> {
  factory _$$ImageDTOImplCopyWith(
          _$ImageDTOImpl value, $Res Function(_$ImageDTOImpl) then) =
      __$$ImageDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type', defaultValue: '') String type,
      @JsonKey(name: 'file', defaultValue: '') String file});
}

/// @nodoc
class __$$ImageDTOImplCopyWithImpl<$Res>
    extends _$ImageDTOCopyWithImpl<$Res, _$ImageDTOImpl>
    implements _$$ImageDTOImplCopyWith<$Res> {
  __$$ImageDTOImplCopyWithImpl(
      _$ImageDTOImpl _value, $Res Function(_$ImageDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? file = null,
  }) {
    return _then(_$ImageDTOImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageDTOImpl implements _ImageDTO {
  const _$ImageDTOImpl(
      {@JsonKey(name: 'type', defaultValue: '') required this.type,
      @JsonKey(name: 'file', defaultValue: '') required this.file});

  factory _$ImageDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageDTOImplFromJson(json);

  @override
  @JsonKey(name: 'type', defaultValue: '')
  final String type;
  @override
  @JsonKey(name: 'file', defaultValue: '')
  final String file;

  @override
  String toString() {
    return 'ImageDTO(type: $type, file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageDTOImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageDTOImplCopyWith<_$ImageDTOImpl> get copyWith =>
      __$$ImageDTOImplCopyWithImpl<_$ImageDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageDTOImplToJson(
      this,
    );
  }
}

abstract class _ImageDTO implements ImageDTO {
  const factory _ImageDTO(
      {@JsonKey(name: 'type', defaultValue: '') required final String type,
      @JsonKey(name: 'file', defaultValue: '')
      required final String file}) = _$ImageDTOImpl;

  factory _ImageDTO.fromJson(Map<String, dynamic> json) =
      _$ImageDTOImpl.fromJson;

  @override
  @JsonKey(name: 'type', defaultValue: '')
  String get type;
  @override
  @JsonKey(name: 'file', defaultValue: '')
  String get file;
  @override
  @JsonKey(ignore: true)
  _$$ImageDTOImplCopyWith<_$ImageDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
