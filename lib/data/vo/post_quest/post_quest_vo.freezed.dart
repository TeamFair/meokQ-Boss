// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_quest_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostQuestVO _$PostQuestVOFromJson(Map<String, dynamic> json) {
  return _PostQuestVO.fromJson(json);
}

/// @nodoc
mixin _$PostQuestVO {
  @JsonKey(name: 'marketId')
  String get marketId => throw _privateConstructorUsedError;
  @JsonKey(name: 'missions')
  Mission get mission => throw _privateConstructorUsedError;
  @JsonKey(name: 'rewards')
  Reward get reward => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostQuestVOCopyWith<PostQuestVO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostQuestVOCopyWith<$Res> {
  factory $PostQuestVOCopyWith(
          PostQuestVO value, $Res Function(PostQuestVO) then) =
      _$PostQuestVOCopyWithImpl<$Res, PostQuestVO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'marketId') String marketId,
      @JsonKey(name: 'missions') Mission mission,
      @JsonKey(name: 'rewards') Reward reward});

  $MissionCopyWith<$Res> get mission;
  $RewardCopyWith<$Res> get reward;
}

/// @nodoc
class _$PostQuestVOCopyWithImpl<$Res, $Val extends PostQuestVO>
    implements $PostQuestVOCopyWith<$Res> {
  _$PostQuestVOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketId = null,
    Object? mission = null,
    Object? reward = null,
  }) {
    return _then(_value.copyWith(
      marketId: null == marketId
          ? _value.marketId
          : marketId // ignore: cast_nullable_to_non_nullable
              as String,
      mission: null == mission
          ? _value.mission
          : mission // ignore: cast_nullable_to_non_nullable
              as Mission,
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as Reward,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MissionCopyWith<$Res> get mission {
    return $MissionCopyWith<$Res>(_value.mission, (value) {
      return _then(_value.copyWith(mission: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RewardCopyWith<$Res> get reward {
    return $RewardCopyWith<$Res>(_value.reward, (value) {
      return _then(_value.copyWith(reward: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostQuestVOImplCopyWith<$Res>
    implements $PostQuestVOCopyWith<$Res> {
  factory _$$PostQuestVOImplCopyWith(
          _$PostQuestVOImpl value, $Res Function(_$PostQuestVOImpl) then) =
      __$$PostQuestVOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'marketId') String marketId,
      @JsonKey(name: 'missions') Mission mission,
      @JsonKey(name: 'rewards') Reward reward});

  @override
  $MissionCopyWith<$Res> get mission;
  @override
  $RewardCopyWith<$Res> get reward;
}

/// @nodoc
class __$$PostQuestVOImplCopyWithImpl<$Res>
    extends _$PostQuestVOCopyWithImpl<$Res, _$PostQuestVOImpl>
    implements _$$PostQuestVOImplCopyWith<$Res> {
  __$$PostQuestVOImplCopyWithImpl(
      _$PostQuestVOImpl _value, $Res Function(_$PostQuestVOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketId = null,
    Object? mission = null,
    Object? reward = null,
  }) {
    return _then(_$PostQuestVOImpl(
      marketId: null == marketId
          ? _value.marketId
          : marketId // ignore: cast_nullable_to_non_nullable
              as String,
      mission: null == mission
          ? _value.mission
          : mission // ignore: cast_nullable_to_non_nullable
              as Mission,
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as Reward,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostQuestVOImpl implements _PostQuestVO {
  const _$PostQuestVOImpl(
      {@JsonKey(name: 'marketId') required this.marketId,
      @JsonKey(name: 'missions') required this.mission,
      @JsonKey(name: 'rewards') required this.reward});

  factory _$PostQuestVOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostQuestVOImplFromJson(json);

  @override
  @JsonKey(name: 'marketId')
  final String marketId;
  @override
  @JsonKey(name: 'missions')
  final Mission mission;
  @override
  @JsonKey(name: 'rewards')
  final Reward reward;

  @override
  String toString() {
    return 'PostQuestVO(marketId: $marketId, mission: $mission, reward: $reward)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostQuestVOImpl &&
            (identical(other.marketId, marketId) ||
                other.marketId == marketId) &&
            (identical(other.mission, mission) || other.mission == mission) &&
            (identical(other.reward, reward) || other.reward == reward));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, marketId, mission, reward);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostQuestVOImplCopyWith<_$PostQuestVOImpl> get copyWith =>
      __$$PostQuestVOImplCopyWithImpl<_$PostQuestVOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostQuestVOImplToJson(
      this,
    );
  }
}

abstract class _PostQuestVO implements PostQuestVO {
  const factory _PostQuestVO(
          {@JsonKey(name: 'marketId') required final String marketId,
          @JsonKey(name: 'missions') required final Mission mission,
          @JsonKey(name: 'rewards') required final Reward reward}) =
      _$PostQuestVOImpl;

  factory _PostQuestVO.fromJson(Map<String, dynamic> json) =
      _$PostQuestVOImpl.fromJson;

  @override
  @JsonKey(name: 'marketId')
  String get marketId;
  @override
  @JsonKey(name: 'missions')
  Mission get mission;
  @override
  @JsonKey(name: 'rewards')
  Reward get reward;
  @override
  @JsonKey(ignore: true)
  _$$PostQuestVOImplCopyWith<_$PostQuestVOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
