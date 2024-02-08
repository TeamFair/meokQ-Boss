// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Quest _$QuestFromJson(Map<String, dynamic> json) {
  return _Quest.fromJson(json);
}

/// @nodoc
mixin _$Quest {
  @JsonKey(name: 'questId')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'rewards')
  List<Reward> get rewards => throw _privateConstructorUsedError;
  @JsonKey(name: 'missions')
  List<Mission> get missions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestCopyWith<Quest> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestCopyWith<$Res> {
  factory $QuestCopyWith(Quest value, $Res Function(Quest) then) =
      _$QuestCopyWithImpl<$Res, Quest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'questId') int id,
      @JsonKey(name: 'rewards') List<Reward> rewards,
      @JsonKey(name: 'missions') List<Mission> missions});
}

/// @nodoc
class _$QuestCopyWithImpl<$Res, $Val extends Quest>
    implements $QuestCopyWith<$Res> {
  _$QuestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rewards = null,
    Object? missions = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      rewards: null == rewards
          ? _value.rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<Reward>,
      missions: null == missions
          ? _value.missions
          : missions // ignore: cast_nullable_to_non_nullable
              as List<Mission>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestImplCopyWith<$Res> implements $QuestCopyWith<$Res> {
  factory _$$QuestImplCopyWith(
          _$QuestImpl value, $Res Function(_$QuestImpl) then) =
      __$$QuestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'questId') int id,
      @JsonKey(name: 'rewards') List<Reward> rewards,
      @JsonKey(name: 'missions') List<Mission> missions});
}

/// @nodoc
class __$$QuestImplCopyWithImpl<$Res>
    extends _$QuestCopyWithImpl<$Res, _$QuestImpl>
    implements _$$QuestImplCopyWith<$Res> {
  __$$QuestImplCopyWithImpl(
      _$QuestImpl _value, $Res Function(_$QuestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rewards = null,
    Object? missions = null,
  }) {
    return _then(_$QuestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      rewards: null == rewards
          ? _value._rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<Reward>,
      missions: null == missions
          ? _value._missions
          : missions // ignore: cast_nullable_to_non_nullable
              as List<Mission>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestImpl implements _Quest {
  const _$QuestImpl(
      {@JsonKey(name: 'questId') required this.id,
      @JsonKey(name: 'rewards') required final List<Reward> rewards,
      @JsonKey(name: 'missions') required final List<Mission> missions})
      : _rewards = rewards,
        _missions = missions;

  factory _$QuestImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestImplFromJson(json);

  @override
  @JsonKey(name: 'questId')
  final int id;
  final List<Reward> _rewards;
  @override
  @JsonKey(name: 'rewards')
  List<Reward> get rewards {
    if (_rewards is EqualUnmodifiableListView) return _rewards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rewards);
  }

  final List<Mission> _missions;
  @override
  @JsonKey(name: 'missions')
  List<Mission> get missions {
    if (_missions is EqualUnmodifiableListView) return _missions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_missions);
  }

  @override
  String toString() {
    return 'Quest(id: $id, rewards: $rewards, missions: $missions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._rewards, _rewards) &&
            const DeepCollectionEquality().equals(other._missions, _missions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_rewards),
      const DeepCollectionEquality().hash(_missions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestImplCopyWith<_$QuestImpl> get copyWith =>
      __$$QuestImplCopyWithImpl<_$QuestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestImplToJson(
      this,
    );
  }
}

abstract class _Quest implements Quest {
  const factory _Quest(
          {@JsonKey(name: 'questId') required final int id,
          @JsonKey(name: 'rewards') required final List<Reward> rewards,
          @JsonKey(name: 'missions') required final List<Mission> missions}) =
      _$QuestImpl;

  factory _Quest.fromJson(Map<String, dynamic> json) = _$QuestImpl.fromJson;

  @override
  @JsonKey(name: 'questId')
  int get id;
  @override
  @JsonKey(name: 'rewards')
  List<Reward> get rewards;
  @override
  @JsonKey(name: 'missions')
  List<Mission> get missions;
  @override
  @JsonKey(ignore: true)
  _$$QuestImplCopyWith<_$QuestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
