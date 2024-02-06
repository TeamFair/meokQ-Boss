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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetQuestVO _$GetQuestVOFromJson(Map<String, dynamic> json) {
  return _GetQuestVO.fromJson(json);
}

/// @nodoc
mixin _$GetQuestVO {
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
  $GetQuestVOCopyWith<GetQuestVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetQuestVOCopyWith<$Res> {
  factory $GetQuestVOCopyWith(
          GetQuestVO value, $Res Function(GetQuestVO) then) =
      _$GetQuestVOCopyWithImpl<$Res, GetQuestVO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'questId') String questId,
      @JsonKey(name: 'rewardTitle') String rewardTitle,
      @JsonKey(name: 'missionTitle') String missionTitle,
      @JsonKey(name: 'status') String questStatus});
}

/// @nodoc
class _$GetQuestVOCopyWithImpl<$Res, $Val extends GetQuestVO>
    implements $GetQuestVOCopyWith<$Res> {
  _$GetQuestVOCopyWithImpl(this._value, this._then);

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
abstract class _$$GetQuestVOImplCopyWith<$Res>
    implements $GetQuestVOCopyWith<$Res> {
  factory _$$GetQuestVOImplCopyWith(
          _$GetQuestVOImpl value, $Res Function(_$GetQuestVOImpl) then) =
      __$$GetQuestVOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'questId') String questId,
      @JsonKey(name: 'rewardTitle') String rewardTitle,
      @JsonKey(name: 'missionTitle') String missionTitle,
      @JsonKey(name: 'status') String questStatus});
}

/// @nodoc
class __$$GetQuestVOImplCopyWithImpl<$Res>
    extends _$GetQuestVOCopyWithImpl<$Res, _$GetQuestVOImpl>
    implements _$$GetQuestVOImplCopyWith<$Res> {
  __$$GetQuestVOImplCopyWithImpl(
      _$GetQuestVOImpl _value, $Res Function(_$GetQuestVOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questId = null,
    Object? rewardTitle = null,
    Object? missionTitle = null,
    Object? questStatus = null,
  }) {
    return _then(_$GetQuestVOImpl(
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
class _$GetQuestVOImpl implements _GetQuestVO {
  const _$GetQuestVOImpl(
      {@JsonKey(name: 'questId') required this.questId,
      @JsonKey(name: 'rewardTitle') required this.rewardTitle,
      @JsonKey(name: 'missionTitle') required this.missionTitle,
      @JsonKey(name: 'status') required this.questStatus});

  factory _$GetQuestVOImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetQuestVOImplFromJson(json);

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
    return 'GetQuestVO(questId: $questId, rewardTitle: $rewardTitle, missionTitle: $missionTitle, questStatus: $questStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetQuestVOImpl &&
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
  _$$GetQuestVOImplCopyWith<_$GetQuestVOImpl> get copyWith =>
      __$$GetQuestVOImplCopyWithImpl<_$GetQuestVOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetQuestVOImplToJson(
      this,
    );
  }
}

abstract class _GetQuestVO implements GetQuestVO {
  const factory _GetQuestVO(
          {@JsonKey(name: 'questId') required final String questId,
          @JsonKey(name: 'rewardTitle') required final String rewardTitle,
          @JsonKey(name: 'missionTitle') required final String missionTitle,
          @JsonKey(name: 'status') required final String questStatus}) =
      _$GetQuestVOImpl;

  factory _GetQuestVO.fromJson(Map<String, dynamic> json) =
      _$GetQuestVOImpl.fromJson;

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
  _$$GetQuestVOImplCopyWith<_$GetQuestVOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
