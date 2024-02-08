// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Reward _$RewardFromJson(Map<String, dynamic> json) {
  return _Reward.fromJson(json);
}

/// @nodoc
mixin _$Reward {
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'target', defaultValue: '')
  String get target => throw _privateConstructorUsedError;
  @JsonKey(name: 'type', defaultValue: '')
  String get rewardTypeStr => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'discountRate')
  int? get discountRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RewardCopyWith<Reward> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardCopyWith<$Res> {
  factory $RewardCopyWith(Reward value, $Res Function(Reward) then) =
      _$RewardCopyWithImpl<$Res, Reward>;
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String? content,
      @JsonKey(name: 'target', defaultValue: '') String target,
      @JsonKey(name: 'type', defaultValue: '') String rewardTypeStr,
      @JsonKey(name: 'quantity') int? quantity,
      @JsonKey(name: 'discountRate') int? discountRate,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class _$RewardCopyWithImpl<$Res, $Val extends Reward>
    implements $RewardCopyWith<$Res> {
  _$RewardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? target = null,
    Object? rewardTypeStr = null,
    Object? quantity = freezed,
    Object? discountRate = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String,
      rewardTypeStr: null == rewardTypeStr
          ? _value.rewardTypeStr
          : rewardTypeStr // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      discountRate: freezed == discountRate
          ? _value.discountRate
          : discountRate // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RewardImplCopyWith<$Res> implements $RewardCopyWith<$Res> {
  factory _$$RewardImplCopyWith(
          _$RewardImpl value, $Res Function(_$RewardImpl) then) =
      __$$RewardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'content') String? content,
      @JsonKey(name: 'target', defaultValue: '') String target,
      @JsonKey(name: 'type', defaultValue: '') String rewardTypeStr,
      @JsonKey(name: 'quantity') int? quantity,
      @JsonKey(name: 'discountRate') int? discountRate,
      @JsonKey(name: 'title') String? title});
}

/// @nodoc
class __$$RewardImplCopyWithImpl<$Res>
    extends _$RewardCopyWithImpl<$Res, _$RewardImpl>
    implements _$$RewardImplCopyWith<$Res> {
  __$$RewardImplCopyWithImpl(
      _$RewardImpl _value, $Res Function(_$RewardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? target = null,
    Object? rewardTypeStr = null,
    Object? quantity = freezed,
    Object? discountRate = freezed,
    Object? title = freezed,
  }) {
    return _then(_$RewardImpl(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String,
      rewardTypeStr: null == rewardTypeStr
          ? _value.rewardTypeStr
          : rewardTypeStr // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      discountRate: freezed == discountRate
          ? _value.discountRate
          : discountRate // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RewardImpl implements _Reward {
  const _$RewardImpl(
      {@JsonKey(name: 'content') this.content,
      @JsonKey(name: 'target', defaultValue: '') required this.target,
      @JsonKey(name: 'type', defaultValue: '') required this.rewardTypeStr,
      @JsonKey(name: 'quantity') this.quantity,
      @JsonKey(name: 'discountRate') this.discountRate,
      @JsonKey(name: 'title') this.title});

  factory _$RewardImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardImplFromJson(json);

  @override
  @JsonKey(name: 'content')
  final String? content;
  @override
  @JsonKey(name: 'target', defaultValue: '')
  final String target;
  @override
  @JsonKey(name: 'type', defaultValue: '')
  final String rewardTypeStr;
  @override
  @JsonKey(name: 'quantity')
  final int? quantity;
  @override
  @JsonKey(name: 'discountRate')
  final int? discountRate;
  @override
  @JsonKey(name: 'title')
  final String? title;

  @override
  String toString() {
    return 'Reward(content: $content, target: $target, rewardTypeStr: $rewardTypeStr, quantity: $quantity, discountRate: $discountRate, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.rewardTypeStr, rewardTypeStr) ||
                other.rewardTypeStr == rewardTypeStr) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.discountRate, discountRate) ||
                other.discountRate == discountRate) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, target, rewardTypeStr,
      quantity, discountRate, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardImplCopyWith<_$RewardImpl> get copyWith =>
      __$$RewardImplCopyWithImpl<_$RewardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardImplToJson(
      this,
    );
  }
}

abstract class _Reward implements Reward {
  const factory _Reward(
      {@JsonKey(name: 'content') final String? content,
      @JsonKey(name: 'target', defaultValue: '') required final String target,
      @JsonKey(name: 'type', defaultValue: '')
      required final String rewardTypeStr,
      @JsonKey(name: 'quantity') final int? quantity,
      @JsonKey(name: 'discountRate') final int? discountRate,
      @JsonKey(name: 'title') final String? title}) = _$RewardImpl;

  factory _Reward.fromJson(Map<String, dynamic> json) = _$RewardImpl.fromJson;

  @override
  @JsonKey(name: 'content')
  String? get content;
  @override
  @JsonKey(name: 'target', defaultValue: '')
  String get target;
  @override
  @JsonKey(name: 'type', defaultValue: '')
  String get rewardTypeStr;
  @override
  @JsonKey(name: 'quantity')
  int? get quantity;
  @override
  @JsonKey(name: 'discountRate')
  int? get discountRate;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$RewardImplCopyWith<_$RewardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
