// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mission.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Mission _$MissionFromJson(Map<String, dynamic> json) {
  return _Mission.fromJson(json);
}

/// @nodoc
mixin _$Mission {
  String get content => throw _privateConstructorUsedError;
  String get target => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  MissionType get missionType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MissionCopyWith<Mission> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MissionCopyWith<$Res> {
  factory $MissionCopyWith(Mission value, $Res Function(Mission) then) =
      _$MissionCopyWithImpl<$Res, Mission>;
  @useResult
  $Res call(
      {String content, String target, int? quantity, MissionType missionType});
}

/// @nodoc
class _$MissionCopyWithImpl<$Res, $Val extends Mission>
    implements $MissionCopyWith<$Res> {
  _$MissionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? target = null,
    Object? quantity = freezed,
    Object? missionType = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      missionType: null == missionType
          ? _value.missionType
          : missionType // ignore: cast_nullable_to_non_nullable
              as MissionType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MissionImplCopyWith<$Res> implements $MissionCopyWith<$Res> {
  factory _$$MissionImplCopyWith(
          _$MissionImpl value, $Res Function(_$MissionImpl) then) =
      __$$MissionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String content, String target, int? quantity, MissionType missionType});
}

/// @nodoc
class __$$MissionImplCopyWithImpl<$Res>
    extends _$MissionCopyWithImpl<$Res, _$MissionImpl>
    implements _$$MissionImplCopyWith<$Res> {
  __$$MissionImplCopyWithImpl(
      _$MissionImpl _value, $Res Function(_$MissionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? target = null,
    Object? quantity = freezed,
    Object? missionType = null,
  }) {
    return _then(_$MissionImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      missionType: null == missionType
          ? _value.missionType
          : missionType // ignore: cast_nullable_to_non_nullable
              as MissionType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MissionImpl implements _Mission {
  const _$MissionImpl(
      {required this.content,
      required this.target,
      required this.quantity,
      required this.missionType});

  factory _$MissionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MissionImplFromJson(json);

  @override
  final String content;
  @override
  final String target;
  @override
  final int? quantity;
  @override
  final MissionType missionType;

  @override
  String toString() {
    return 'Mission(content: $content, target: $target, quantity: $quantity, missionType: $missionType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MissionImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.missionType, missionType) ||
                other.missionType == missionType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, content, target, quantity, missionType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MissionImplCopyWith<_$MissionImpl> get copyWith =>
      __$$MissionImplCopyWithImpl<_$MissionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MissionImplToJson(
      this,
    );
  }
}

abstract class _Mission implements Mission {
  const factory _Mission(
      {required final String content,
      required final String target,
      required final int? quantity,
      required final MissionType missionType}) = _$MissionImpl;

  factory _Mission.fromJson(Map<String, dynamic> json) = _$MissionImpl.fromJson;

  @override
  String get content;
  @override
  String get target;
  @override
  int? get quantity;
  @override
  MissionType get missionType;
  @override
  @JsonKey(ignore: true)
  _$$MissionImplCopyWith<_$MissionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
