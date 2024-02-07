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
  @JsonKey(name: 'challengeId')
  String get challengeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'receiptImageId')
  String get receiptImageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'questId')
  Quest get quest => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get challengeStatus => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'challengeId') String challengeId,
      @JsonKey(name: 'receiptImageId') String receiptImageId,
      @JsonKey(name: 'questId') Quest quest,
      @JsonKey(name: 'status') String challengeStatus});

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
    Object? challengeId = null,
    Object? receiptImageId = null,
    Object? quest = null,
    Object? challengeStatus = null,
  }) {
    return _then(_value.copyWith(
      challengeId: null == challengeId
          ? _value.challengeId
          : challengeId // ignore: cast_nullable_to_non_nullable
              as String,
      receiptImageId: null == receiptImageId
          ? _value.receiptImageId
          : receiptImageId // ignore: cast_nullable_to_non_nullable
              as String,
      quest: null == quest
          ? _value.quest
          : quest // ignore: cast_nullable_to_non_nullable
              as Quest,
      challengeStatus: null == challengeStatus
          ? _value.challengeStatus
          : challengeStatus // ignore: cast_nullable_to_non_nullable
              as String,
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
      {@JsonKey(name: 'challengeId') String challengeId,
      @JsonKey(name: 'receiptImageId') String receiptImageId,
      @JsonKey(name: 'questId') Quest quest,
      @JsonKey(name: 'status') String challengeStatus});

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
    Object? challengeId = null,
    Object? receiptImageId = null,
    Object? quest = null,
    Object? challengeStatus = null,
  }) {
    return _then(_$ChallengeImpl(
      challengeId: null == challengeId
          ? _value.challengeId
          : challengeId // ignore: cast_nullable_to_non_nullable
              as String,
      receiptImageId: null == receiptImageId
          ? _value.receiptImageId
          : receiptImageId // ignore: cast_nullable_to_non_nullable
              as String,
      quest: null == quest
          ? _value.quest
          : quest // ignore: cast_nullable_to_non_nullable
              as Quest,
      challengeStatus: null == challengeStatus
          ? _value.challengeStatus
          : challengeStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChallengeImpl implements _Challenge {
  const _$ChallengeImpl(
      {@JsonKey(name: 'challengeId') required this.challengeId,
      @JsonKey(name: 'receiptImageId') required this.receiptImageId,
      @JsonKey(name: 'questId') required this.quest,
      @JsonKey(name: 'status') required this.challengeStatus});

  factory _$ChallengeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChallengeImplFromJson(json);

  @override
  @JsonKey(name: 'challengeId')
  final String challengeId;
  @override
  @JsonKey(name: 'receiptImageId')
  final String receiptImageId;
  @override
  @JsonKey(name: 'questId')
  final Quest quest;
  @override
  @JsonKey(name: 'status')
  final String challengeStatus;

  @override
  String toString() {
    return 'Challenge(challengeId: $challengeId, receiptImageId: $receiptImageId, quest: $quest, challengeStatus: $challengeStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChallengeImpl &&
            (identical(other.challengeId, challengeId) ||
                other.challengeId == challengeId) &&
            (identical(other.receiptImageId, receiptImageId) ||
                other.receiptImageId == receiptImageId) &&
            (identical(other.quest, quest) || other.quest == quest) &&
            (identical(other.challengeStatus, challengeStatus) ||
                other.challengeStatus == challengeStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, challengeId, receiptImageId, quest, challengeStatus);

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
          {@JsonKey(name: 'challengeId') required final String challengeId,
          @JsonKey(name: 'receiptImageId') required final String receiptImageId,
          @JsonKey(name: 'questId') required final Quest quest,
          @JsonKey(name: 'status') required final String challengeStatus}) =
      _$ChallengeImpl;

  factory _Challenge.fromJson(Map<String, dynamic> json) =
      _$ChallengeImpl.fromJson;

  @override
  @JsonKey(name: 'challengeId')
  String get challengeId;
  @override
  @JsonKey(name: 'receiptImageId')
  String get receiptImageId;
  @override
  @JsonKey(name: 'questId')
  Quest get quest;
  @override
  @JsonKey(name: 'status')
  String get challengeStatus;
  @override
  @JsonKey(ignore: true)
  _$$ChallengeImplCopyWith<_$ChallengeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
