// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'challenge_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChallengeVO _$ChallengeVOFromJson(Map<String, dynamic> json) {
  return _ChallengeVO.fromJson(json);
}

/// @nodoc
mixin _$ChallengeVO {
  @JsonKey(name: 'challengeId', defaultValue: '')
  String get challengeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'quest')
  Quest get quest => throw _privateConstructorUsedError;
  @JsonKey(name: 'receiptImageId')
  String get receiptImageId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChallengeVOCopyWith<ChallengeVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChallengeVOCopyWith<$Res> {
  factory $ChallengeVOCopyWith(
          ChallengeVO value, $Res Function(ChallengeVO) then) =
      _$ChallengeVOCopyWithImpl<$Res, ChallengeVO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'challengeId', defaultValue: '') String challengeId,
      @JsonKey(name: 'quest') Quest quest,
      @JsonKey(name: 'receiptImageId') String receiptImageId});

  $QuestCopyWith<$Res> get quest;
}

/// @nodoc
class _$ChallengeVOCopyWithImpl<$Res, $Val extends ChallengeVO>
    implements $ChallengeVOCopyWith<$Res> {
  _$ChallengeVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? challengeId = null,
    Object? quest = null,
    Object? receiptImageId = null,
  }) {
    return _then(_value.copyWith(
      challengeId: null == challengeId
          ? _value.challengeId
          : challengeId // ignore: cast_nullable_to_non_nullable
              as String,
      quest: null == quest
          ? _value.quest
          : quest // ignore: cast_nullable_to_non_nullable
              as Quest,
      receiptImageId: null == receiptImageId
          ? _value.receiptImageId
          : receiptImageId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ChallengeVOImplCopyWith<$Res>
    implements $ChallengeVOCopyWith<$Res> {
  factory _$$ChallengeVOImplCopyWith(
          _$ChallengeVOImpl value, $Res Function(_$ChallengeVOImpl) then) =
      __$$ChallengeVOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'challengeId', defaultValue: '') String challengeId,
      @JsonKey(name: 'quest') Quest quest,
      @JsonKey(name: 'receiptImageId') String receiptImageId});

  @override
  $QuestCopyWith<$Res> get quest;
}

/// @nodoc
class __$$ChallengeVOImplCopyWithImpl<$Res>
    extends _$ChallengeVOCopyWithImpl<$Res, _$ChallengeVOImpl>
    implements _$$ChallengeVOImplCopyWith<$Res> {
  __$$ChallengeVOImplCopyWithImpl(
      _$ChallengeVOImpl _value, $Res Function(_$ChallengeVOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? challengeId = null,
    Object? quest = null,
    Object? receiptImageId = null,
  }) {
    return _then(_$ChallengeVOImpl(
      challengeId: null == challengeId
          ? _value.challengeId
          : challengeId // ignore: cast_nullable_to_non_nullable
              as String,
      quest: null == quest
          ? _value.quest
          : quest // ignore: cast_nullable_to_non_nullable
              as Quest,
      receiptImageId: null == receiptImageId
          ? _value.receiptImageId
          : receiptImageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChallengeVOImpl implements _ChallengeVO {
  const _$ChallengeVOImpl(
      {@JsonKey(name: 'challengeId', defaultValue: '')
      required this.challengeId,
      @JsonKey(name: 'quest') required this.quest,
      @JsonKey(name: 'receiptImageId') required this.receiptImageId});

  factory _$ChallengeVOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChallengeVOImplFromJson(json);

  @override
  @JsonKey(name: 'challengeId', defaultValue: '')
  final String challengeId;
  @override
  @JsonKey(name: 'quest')
  final Quest quest;
  @override
  @JsonKey(name: 'receiptImageId')
  final String receiptImageId;

  @override
  String toString() {
    return 'ChallengeVO(challengeId: $challengeId, quest: $quest, receiptImageId: $receiptImageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChallengeVOImpl &&
            (identical(other.challengeId, challengeId) ||
                other.challengeId == challengeId) &&
            (identical(other.quest, quest) || other.quest == quest) &&
            (identical(other.receiptImageId, receiptImageId) ||
                other.receiptImageId == receiptImageId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, challengeId, quest, receiptImageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChallengeVOImplCopyWith<_$ChallengeVOImpl> get copyWith =>
      __$$ChallengeVOImplCopyWithImpl<_$ChallengeVOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChallengeVOImplToJson(
      this,
    );
  }
}

abstract class _ChallengeVO implements ChallengeVO {
  const factory _ChallengeVO(
      {@JsonKey(name: 'challengeId', defaultValue: '')
      required final String challengeId,
      @JsonKey(name: 'quest') required final Quest quest,
      @JsonKey(name: 'receiptImageId')
      required final String receiptImageId}) = _$ChallengeVOImpl;

  factory _ChallengeVO.fromJson(Map<String, dynamic> json) =
      _$ChallengeVOImpl.fromJson;

  @override
  @JsonKey(name: 'challengeId', defaultValue: '')
  String get challengeId;
  @override
  @JsonKey(name: 'quest')
  Quest get quest;
  @override
  @JsonKey(name: 'receiptImageId')
  String get receiptImageId;
  @override
  @JsonKey(ignore: true)
  _$$ChallengeVOImplCopyWith<_$ChallengeVOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
