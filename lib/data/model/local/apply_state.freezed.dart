// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apply_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApplyState _$ApplyStateFromJson(Map<String, dynamic> json) {
  return _ApplyState.fromJson(json);
}

/// @nodoc
mixin _$ApplyState {
  bool get bossState => throw _privateConstructorUsedError;
  bool get storeState => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplyStateCopyWith<ApplyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplyStateCopyWith<$Res> {
  factory $ApplyStateCopyWith(
          ApplyState value, $Res Function(ApplyState) then) =
      _$ApplyStateCopyWithImpl<$Res, ApplyState>;
  @useResult
  $Res call({bool bossState, bool storeState});
}

/// @nodoc
class _$ApplyStateCopyWithImpl<$Res, $Val extends ApplyState>
    implements $ApplyStateCopyWith<$Res> {
  _$ApplyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bossState = null,
    Object? storeState = null,
  }) {
    return _then(_value.copyWith(
      bossState: null == bossState
          ? _value.bossState
          : bossState // ignore: cast_nullable_to_non_nullable
              as bool,
      storeState: null == storeState
          ? _value.storeState
          : storeState // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApplyStateImplCopyWith<$Res>
    implements $ApplyStateCopyWith<$Res> {
  factory _$$ApplyStateImplCopyWith(
          _$ApplyStateImpl value, $Res Function(_$ApplyStateImpl) then) =
      __$$ApplyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool bossState, bool storeState});
}

/// @nodoc
class __$$ApplyStateImplCopyWithImpl<$Res>
    extends _$ApplyStateCopyWithImpl<$Res, _$ApplyStateImpl>
    implements _$$ApplyStateImplCopyWith<$Res> {
  __$$ApplyStateImplCopyWithImpl(
      _$ApplyStateImpl _value, $Res Function(_$ApplyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bossState = null,
    Object? storeState = null,
  }) {
    return _then(_$ApplyStateImpl(
      bossState: null == bossState
          ? _value.bossState
          : bossState // ignore: cast_nullable_to_non_nullable
              as bool,
      storeState: null == storeState
          ? _value.storeState
          : storeState // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApplyStateImpl implements _ApplyState {
  const _$ApplyStateImpl({required this.bossState, required this.storeState});

  factory _$ApplyStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApplyStateImplFromJson(json);

  @override
  final bool bossState;
  @override
  final bool storeState;

  @override
  String toString() {
    return 'ApplyState(bossState: $bossState, storeState: $storeState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplyStateImpl &&
            (identical(other.bossState, bossState) ||
                other.bossState == bossState) &&
            (identical(other.storeState, storeState) ||
                other.storeState == storeState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bossState, storeState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplyStateImplCopyWith<_$ApplyStateImpl> get copyWith =>
      __$$ApplyStateImplCopyWithImpl<_$ApplyStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApplyStateImplToJson(
      this,
    );
  }
}

abstract class _ApplyState implements ApplyState {
  const factory _ApplyState(
      {required final bool bossState,
      required final bool storeState}) = _$ApplyStateImpl;

  factory _ApplyState.fromJson(Map<String, dynamic> json) =
      _$ApplyStateImpl.fromJson;

  @override
  bool get bossState;
  @override
  bool get storeState;
  @override
  @JsonKey(ignore: true)
  _$$ApplyStateImplCopyWith<_$ApplyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
