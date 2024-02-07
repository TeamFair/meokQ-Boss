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
  Reward get reward => throw _privateConstructorUsedError;
  @JsonKey(name: 'missions')
  Mission get mission => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'rewards') Reward reward,
      @JsonKey(name: 'missions') Mission mission});

  $RewardCopyWith<$Res> get reward;
  $MissionCopyWith<$Res> get mission;
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
    Object? reward = null,
    Object? mission = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as Reward,
      mission: null == mission
          ? _value.mission
          : mission // ignore: cast_nullable_to_non_nullable
              as Mission,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RewardCopyWith<$Res> get reward {
    return $RewardCopyWith<$Res>(_value.reward, (value) {
      return _then(_value.copyWith(reward: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MissionCopyWith<$Res> get mission {
    return $MissionCopyWith<$Res>(_value.mission, (value) {
      return _then(_value.copyWith(mission: value) as $Val);
    });
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
      @JsonKey(name: 'rewards') Reward reward,
      @JsonKey(name: 'missions') Mission mission});

  @override
  $RewardCopyWith<$Res> get reward;
  @override
  $MissionCopyWith<$Res> get mission;
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
    Object? reward = null,
    Object? mission = null,
  }) {
    return _then(_$QuestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as Reward,
      mission: null == mission
          ? _value.mission
          : mission // ignore: cast_nullable_to_non_nullable
              as Mission,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestImpl implements _Quest {
  const _$QuestImpl(
      {@JsonKey(name: 'questId') required this.id,
      @JsonKey(name: 'rewards') required this.reward,
      @JsonKey(name: 'missions') required this.mission});

  factory _$QuestImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestImplFromJson(json);

  @override
  @JsonKey(name: 'questId')
  final int id;
  @override
  @JsonKey(name: 'rewards')
  final Reward reward;
  @override
  @JsonKey(name: 'missions')
  final Mission mission;

  @override
  String toString() {
    return 'Quest(id: $id, reward: $reward, mission: $mission)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reward, reward) || other.reward == reward) &&
            (identical(other.mission, mission) || other.mission == mission));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, reward, mission);

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
      @JsonKey(name: 'rewards') required final Reward reward,
      @JsonKey(name: 'missions') required final Mission mission}) = _$QuestImpl;

  factory _Quest.fromJson(Map<String, dynamic> json) = _$QuestImpl.fromJson;

  @override
  @JsonKey(name: 'questId')
  int get id;
  @override
  @JsonKey(name: 'rewards')
  Reward get reward;
  @override
  @JsonKey(name: 'missions')
  Mission get mission;
  @override
  @JsonKey(ignore: true)
  _$$QuestImplCopyWith<_$QuestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
