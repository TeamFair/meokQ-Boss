// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'challenge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Challenge _$ChallengeFromJson(Map<String, dynamic> json) {
  return _Challenge.fromJson(json);
}

/// @nodoc
mixin _$Challenge {
  @JsonKey(name: 'questId')
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get applicantId => throw _privateConstructorUsedError;
  Quest get quest => throw _privateConstructorUsedError;
  ChallengeStatus get challengeStatus => throw _privateConstructorUsedError;
  String? get day => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChallengeCopyWith<Challenge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChallengeCopyWith<$Res> {
  factory $ChallengeCopyWith(Challenge value, $Res Function(Challenge) then) =
      _$ChallengeCopyWithImpl<$Res, Challenge>;
  @useResult
  $Res call(
      {@JsonKey(name: 'questId') int id,
      String url,
      String applicantId,
      Quest quest,
      ChallengeStatus challengeStatus,
      String? day});

  $QuestCopyWith<$Res> get quest;
}

/// @nodoc
class _$ChallengeCopyWithImpl<$Res, $Val extends Challenge>
    implements $ChallengeCopyWith<$Res> {
  _$ChallengeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? applicantId = null,
    Object? quest = null,
    Object? challengeStatus = null,
    Object? day = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      applicantId: null == applicantId
          ? _value.applicantId
          : applicantId // ignore: cast_nullable_to_non_nullable
              as String,
      quest: null == quest
          ? _value.quest
          : quest // ignore: cast_nullable_to_non_nullable
              as Quest,
      challengeStatus: null == challengeStatus
          ? _value.challengeStatus
          : challengeStatus // ignore: cast_nullable_to_non_nullable
              as ChallengeStatus,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestCopyWith<$Res> get quest {
    return $QuestCopyWith<$Res>(_value.quest, (value) {
      return _then(_value.copyWith(quest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChallengeImplCopyWith<$Res>
    implements $ChallengeCopyWith<$Res> {
  factory _$$ChallengeImplCopyWith(
          _$ChallengeImpl value, $Res Function(_$ChallengeImpl) then) =
      __$$ChallengeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'questId') int id,
      String url,
      String applicantId,
      Quest quest,
      ChallengeStatus challengeStatus,
      String? day});

  @override
  $QuestCopyWith<$Res> get quest;
}

/// @nodoc
class __$$ChallengeImplCopyWithImpl<$Res>
    extends _$ChallengeCopyWithImpl<$Res, _$ChallengeImpl>
    implements _$$ChallengeImplCopyWith<$Res> {
  __$$ChallengeImplCopyWithImpl(
      _$ChallengeImpl _value, $Res Function(_$ChallengeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? applicantId = null,
    Object? quest = null,
    Object? challengeStatus = null,
    Object? day = freezed,
  }) {
    return _then(_$ChallengeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      applicantId: null == applicantId
          ? _value.applicantId
          : applicantId // ignore: cast_nullable_to_non_nullable
              as String,
      quest: null == quest
          ? _value.quest
          : quest // ignore: cast_nullable_to_non_nullable
              as Quest,
      challengeStatus: null == challengeStatus
          ? _value.challengeStatus
          : challengeStatus // ignore: cast_nullable_to_non_nullable
              as ChallengeStatus,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChallengeImpl implements _Challenge {
  const _$ChallengeImpl(
      {@JsonKey(name: 'questId') required this.id,
      required this.url,
      required this.applicantId,
      required this.quest,
      required this.challengeStatus,
      required this.day});

  factory _$ChallengeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChallengeImplFromJson(json);

  @override
  @JsonKey(name: 'questId')
  final int id;
  @override
  final String url;
  @override
  final String applicantId;
  @override
  final Quest quest;
  @override
  final ChallengeStatus challengeStatus;
  @override
  final String? day;

  @override
  String toString() {
    return 'Challenge(id: $id, url: $url, applicantId: $applicantId, quest: $quest, challengeStatus: $challengeStatus, day: $day)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChallengeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.applicantId, applicantId) ||
                other.applicantId == applicantId) &&
            (identical(other.quest, quest) || other.quest == quest) &&
            (identical(other.challengeStatus, challengeStatus) ||
                other.challengeStatus == challengeStatus) &&
            (identical(other.day, day) || other.day == day));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, url, applicantId, quest, challengeStatus, day);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChallengeImplCopyWith<_$ChallengeImpl> get copyWith =>
      __$$ChallengeImplCopyWithImpl<_$ChallengeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChallengeImplToJson(
      this,
    );
  }
}

abstract class _Challenge implements Challenge {
  const factory _Challenge(
      {@JsonKey(name: 'questId') required final int id,
      required final String url,
      required final String applicantId,
      required final Quest quest,
      required final ChallengeStatus challengeStatus,
      required final String? day}) = _$ChallengeImpl;

  factory _Challenge.fromJson(Map<String, dynamic> json) =
      _$ChallengeImpl.fromJson;

  @override
  @JsonKey(name: 'questId')
  int get id;
  @override
  String get url;
  @override
  String get applicantId;
  @override
  Quest get quest;
  @override
  ChallengeStatus get challengeStatus;
  @override
  String? get day;
  @override
  @JsonKey(ignore: true)
  _$$ChallengeImplCopyWith<_$ChallengeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
