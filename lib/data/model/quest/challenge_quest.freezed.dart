// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'challenge_quest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChallengeQuest _$ChallengeQuestFromJson(Map<String, dynamic> json) {
  return _ChallengeQuest.fromJson(json);
}

/// @nodoc
mixin _$ChallengeQuest {
  @JsonKey(name: 'questId')
  String get questId => throw _privateConstructorUsedError;
  @JsonKey(name: 'rewards')
  List<Reward> get rewards => throw _privateConstructorUsedError;
  @JsonKey(name: 'missions')
  List<Mission> get missions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChallengeQuestCopyWith<ChallengeQuest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChallengeQuestCopyWith<$Res> {
  factory $ChallengeQuestCopyWith(
          ChallengeQuest value, $Res Function(ChallengeQuest) then) =
      _$ChallengeQuestCopyWithImpl<$Res, ChallengeQuest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'questId') String questId,
      @JsonKey(name: 'rewards') List<Reward> rewards,
      @JsonKey(name: 'missions') List<Mission> missions});
}

/// @nodoc
class _$ChallengeQuestCopyWithImpl<$Res, $Val extends ChallengeQuest>
    implements $ChallengeQuestCopyWith<$Res> {
  _$ChallengeQuestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questId = null,
    Object? rewards = null,
    Object? missions = null,
  }) {
    return _then(_value.copyWith(
      questId: null == questId
          ? _value.questId
          : questId // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$ChallengeQuestImplCopyWith<$Res>
    implements $ChallengeQuestCopyWith<$Res> {
  factory _$$ChallengeQuestImplCopyWith(_$ChallengeQuestImpl value,
          $Res Function(_$ChallengeQuestImpl) then) =
      __$$ChallengeQuestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'questId') String questId,
      @JsonKey(name: 'rewards') List<Reward> rewards,
      @JsonKey(name: 'missions') List<Mission> missions});
}

/// @nodoc
class __$$ChallengeQuestImplCopyWithImpl<$Res>
    extends _$ChallengeQuestCopyWithImpl<$Res, _$ChallengeQuestImpl>
    implements _$$ChallengeQuestImplCopyWith<$Res> {
  __$$ChallengeQuestImplCopyWithImpl(
      _$ChallengeQuestImpl _value, $Res Function(_$ChallengeQuestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questId = null,
    Object? rewards = null,
    Object? missions = null,
  }) {
    return _then(_$ChallengeQuestImpl(
      questId: null == questId
          ? _value.questId
          : questId // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$ChallengeQuestImpl implements _ChallengeQuest {
  const _$ChallengeQuestImpl(
      {@JsonKey(name: 'questId') required this.questId,
      @JsonKey(name: 'rewards') required final List<Reward> rewards,
      @JsonKey(name: 'missions') required final List<Mission> missions})
      : _rewards = rewards,
        _missions = missions;

  factory _$ChallengeQuestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChallengeQuestImplFromJson(json);

  @override
  @JsonKey(name: 'questId')
  final String questId;
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
    return 'ChallengeQuest(questId: $questId, rewards: $rewards, missions: $missions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChallengeQuestImpl &&
            (identical(other.questId, questId) || other.questId == questId) &&
            const DeepCollectionEquality().equals(other._rewards, _rewards) &&
            const DeepCollectionEquality().equals(other._missions, _missions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      questId,
      const DeepCollectionEquality().hash(_rewards),
      const DeepCollectionEquality().hash(_missions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChallengeQuestImplCopyWith<_$ChallengeQuestImpl> get copyWith =>
      __$$ChallengeQuestImplCopyWithImpl<_$ChallengeQuestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChallengeQuestImplToJson(
      this,
    );
  }
}

abstract class _ChallengeQuest implements ChallengeQuest {
  const factory _ChallengeQuest(
          {@JsonKey(name: 'questId') required final String questId,
          @JsonKey(name: 'rewards') required final List<Reward> rewards,
          @JsonKey(name: 'missions') required final List<Mission> missions}) =
      _$ChallengeQuestImpl;

  factory _ChallengeQuest.fromJson(Map<String, dynamic> json) =
      _$ChallengeQuestImpl.fromJson;

  @override
  @JsonKey(name: 'questId')
  String get questId;
  @override
  @JsonKey(name: 'rewards')
  List<Reward> get rewards;
  @override
  @JsonKey(name: 'missions')
  List<Mission> get missions;
  @override
  @JsonKey(ignore: true)
  _$$ChallengeQuestImplCopyWith<_$ChallengeQuestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
