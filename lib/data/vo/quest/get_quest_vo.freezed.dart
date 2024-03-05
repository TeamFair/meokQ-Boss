// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_quest_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestListVO _$QuestListVOFromJson(Map<String, dynamic> json) {
  return _QuestListVO.fromJson(json);
}

/// @nodoc
mixin _$QuestListVO {
  @JsonKey(name: 'questId')
  String get questId => throw _privateConstructorUsedError;
  @JsonKey(name: 'rewardTitle')
  String get rewardTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'missionTitle')
  String get missionTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get questStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestListVOCopyWith<QuestListVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestListVOCopyWith<$Res> {
  factory $QuestListVOCopyWith(
          QuestListVO value, $Res Function(QuestListVO) then) =
      _$QuestListVOCopyWithImpl<$Res, QuestListVO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'questId') String questId,
      @JsonKey(name: 'rewardTitle') String rewardTitle,
      @JsonKey(name: 'missionTitle') String missionTitle,
      @JsonKey(name: 'status') String questStatus});
}

/// @nodoc
class _$QuestListVOCopyWithImpl<$Res, $Val extends QuestListVO>
    implements $QuestListVOCopyWith<$Res> {
  _$QuestListVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questId = null,
    Object? rewardTitle = null,
    Object? missionTitle = null,
    Object? questStatus = null,
  }) {
    return _then(_value.copyWith(
      questId: null == questId
          ? _value.questId
          : questId // ignore: cast_nullable_to_non_nullable
              as String,
      rewardTitle: null == rewardTitle
          ? _value.rewardTitle
          : rewardTitle // ignore: cast_nullable_to_non_nullable
              as String,
      missionTitle: null == missionTitle
          ? _value.missionTitle
          : missionTitle // ignore: cast_nullable_to_non_nullable
              as String,
      questStatus: null == questStatus
          ? _value.questStatus
          : questStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestListVOImplCopyWith<$Res>
    implements $QuestListVOCopyWith<$Res> {
  factory _$$QuestListVOImplCopyWith(
          _$QuestListVOImpl value, $Res Function(_$QuestListVOImpl) then) =
      __$$QuestListVOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'questId') String questId,
      @JsonKey(name: 'rewardTitle') String rewardTitle,
      @JsonKey(name: 'missionTitle') String missionTitle,
      @JsonKey(name: 'status') String questStatus});
}

/// @nodoc
class __$$QuestListVOImplCopyWithImpl<$Res>
    extends _$QuestListVOCopyWithImpl<$Res, _$QuestListVOImpl>
    implements _$$QuestListVOImplCopyWith<$Res> {
  __$$QuestListVOImplCopyWithImpl(
      _$QuestListVOImpl _value, $Res Function(_$QuestListVOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questId = null,
    Object? rewardTitle = null,
    Object? missionTitle = null,
    Object? questStatus = null,
  }) {
    return _then(_$QuestListVOImpl(
      questId: null == questId
          ? _value.questId
          : questId // ignore: cast_nullable_to_non_nullable
              as String,
      rewardTitle: null == rewardTitle
          ? _value.rewardTitle
          : rewardTitle // ignore: cast_nullable_to_non_nullable
              as String,
      missionTitle: null == missionTitle
          ? _value.missionTitle
          : missionTitle // ignore: cast_nullable_to_non_nullable
              as String,
      questStatus: null == questStatus
          ? _value.questStatus
          : questStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestListVOImpl implements _QuestListVO {
  const _$QuestListVOImpl(
      {@JsonKey(name: 'questId') required this.questId,
      @JsonKey(name: 'rewardTitle') required this.rewardTitle,
      @JsonKey(name: 'missionTitle') required this.missionTitle,
      @JsonKey(name: 'status') required this.questStatus});

  factory _$QuestListVOImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestListVOImplFromJson(json);

  @override
  @JsonKey(name: 'questId')
  final String questId;
  @override
  @JsonKey(name: 'rewardTitle')
  final String rewardTitle;
  @override
  @JsonKey(name: 'missionTitle')
  final String missionTitle;
  @override
  @JsonKey(name: 'status')
  final String questStatus;

  @override
  String toString() {
    return 'QuestListVO(questId: $questId, rewardTitle: $rewardTitle, missionTitle: $missionTitle, questStatus: $questStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestListVOImpl &&
            (identical(other.questId, questId) || other.questId == questId) &&
            (identical(other.rewardTitle, rewardTitle) ||
                other.rewardTitle == rewardTitle) &&
            (identical(other.missionTitle, missionTitle) ||
                other.missionTitle == missionTitle) &&
            (identical(other.questStatus, questStatus) ||
                other.questStatus == questStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, questId, rewardTitle, missionTitle, questStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestListVOImplCopyWith<_$QuestListVOImpl> get copyWith =>
      __$$QuestListVOImplCopyWithImpl<_$QuestListVOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestListVOImplToJson(
      this,
    );
  }
}

abstract class _QuestListVO implements QuestListVO {
  const factory _QuestListVO(
          {@JsonKey(name: 'questId') required final String questId,
          @JsonKey(name: 'rewardTitle') required final String rewardTitle,
          @JsonKey(name: 'missionTitle') required final String missionTitle,
          @JsonKey(name: 'status') required final String questStatus}) =
      _$QuestListVOImpl;

  factory _QuestListVO.fromJson(Map<String, dynamic> json) =
      _$QuestListVOImpl.fromJson;

  @override
  @JsonKey(name: 'questId')
  String get questId;
  @override
  @JsonKey(name: 'rewardTitle')
  String get rewardTitle;
  @override
  @JsonKey(name: 'missionTitle')
  String get missionTitle;
  @override
  @JsonKey(name: 'status')
  String get questStatus;
  @override
  @JsonKey(ignore: true)
  _$$QuestListVOImplCopyWith<_$QuestListVOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
