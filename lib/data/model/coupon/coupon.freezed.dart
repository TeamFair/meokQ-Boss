// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Coupon _$CouponFromJson(Map<String, dynamic> json) {
  return _Coupon.fromJson(json);
}

/// @nodoc
mixin _$Coupon {
  @JsonKey(name: 'useDate')
  String get useDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get couponStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'couponId')
  String get couponId => throw _privateConstructorUsedError;
  @JsonKey(name: 'userNickname')
  String get userNickname => throw _privateConstructorUsedError;
  @JsonKey(name: 'reward')
  Reward get reward => throw _privateConstructorUsedError;
  @JsonKey(name: 'missions')
  List<Mission> get missions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponCopyWith<Coupon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponCopyWith<$Res> {
  factory $CouponCopyWith(Coupon value, $Res Function(Coupon) then) =
      _$CouponCopyWithImpl<$Res, Coupon>;
  @useResult
  $Res call(
      {@JsonKey(name: 'useDate') String useDate,
      @JsonKey(name: 'status') String couponStatus,
      @JsonKey(name: 'couponId') String couponId,
      @JsonKey(name: 'userNickname') String userNickname,
      @JsonKey(name: 'reward') Reward reward,
      @JsonKey(name: 'missions') List<Mission> missions});

  $RewardCopyWith<$Res> get reward;
}

/// @nodoc
class _$CouponCopyWithImpl<$Res, $Val extends Coupon>
    implements $CouponCopyWith<$Res> {
  _$CouponCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? useDate = null,
    Object? couponStatus = null,
    Object? couponId = null,
    Object? userNickname = null,
    Object? reward = null,
    Object? missions = null,
  }) {
    return _then(_value.copyWith(
      useDate: null == useDate
          ? _value.useDate
          : useDate // ignore: cast_nullable_to_non_nullable
              as String,
      couponStatus: null == couponStatus
          ? _value.couponStatus
          : couponStatus // ignore: cast_nullable_to_non_nullable
              as String,
      couponId: null == couponId
          ? _value.couponId
          : couponId // ignore: cast_nullable_to_non_nullable
              as String,
      userNickname: null == userNickname
          ? _value.userNickname
          : userNickname // ignore: cast_nullable_to_non_nullable
              as String,
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as Reward,
      missions: null == missions
          ? _value.missions
          : missions // ignore: cast_nullable_to_non_nullable
              as List<Mission>,
    ) as $Val);
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
abstract class _$$CouponImplCopyWith<$Res> implements $CouponCopyWith<$Res> {
  factory _$$CouponImplCopyWith(
          _$CouponImpl value, $Res Function(_$CouponImpl) then) =
      __$$CouponImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'useDate') String useDate,
      @JsonKey(name: 'status') String couponStatus,
      @JsonKey(name: 'couponId') String couponId,
      @JsonKey(name: 'userNickname') String userNickname,
      @JsonKey(name: 'reward') Reward reward,
      @JsonKey(name: 'missions') List<Mission> missions});

  @override
  $RewardCopyWith<$Res> get reward;
}

/// @nodoc
class __$$CouponImplCopyWithImpl<$Res>
    extends _$CouponCopyWithImpl<$Res, _$CouponImpl>
    implements _$$CouponImplCopyWith<$Res> {
  __$$CouponImplCopyWithImpl(
      _$CouponImpl _value, $Res Function(_$CouponImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? useDate = null,
    Object? couponStatus = null,
    Object? couponId = null,
    Object? userNickname = null,
    Object? reward = null,
    Object? missions = null,
  }) {
    return _then(_$CouponImpl(
      useDate: null == useDate
          ? _value.useDate
          : useDate // ignore: cast_nullable_to_non_nullable
              as String,
      couponStatus: null == couponStatus
          ? _value.couponStatus
          : couponStatus // ignore: cast_nullable_to_non_nullable
              as String,
      couponId: null == couponId
          ? _value.couponId
          : couponId // ignore: cast_nullable_to_non_nullable
              as String,
      userNickname: null == userNickname
          ? _value.userNickname
          : userNickname // ignore: cast_nullable_to_non_nullable
              as String,
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as Reward,
      missions: null == missions
          ? _value._missions
          : missions // ignore: cast_nullable_to_non_nullable
              as List<Mission>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CouponImpl implements _Coupon {
  const _$CouponImpl(
      {@JsonKey(name: 'useDate') required this.useDate,
      @JsonKey(name: 'status') required this.couponStatus,
      @JsonKey(name: 'couponId') required this.couponId,
      @JsonKey(name: 'userNickname') required this.userNickname,
      @JsonKey(name: 'reward') required this.reward,
      @JsonKey(name: 'missions') required final List<Mission> missions})
      : _missions = missions;

  factory _$CouponImpl.fromJson(Map<String, dynamic> json) =>
      _$$CouponImplFromJson(json);

  @override
  @JsonKey(name: 'useDate')
  final String useDate;
  @override
  @JsonKey(name: 'status')
  final String couponStatus;
  @override
  @JsonKey(name: 'couponId')
  final String couponId;
  @override
  @JsonKey(name: 'userNickname')
  final String userNickname;
  @override
  @JsonKey(name: 'reward')
  final Reward reward;
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
    return 'Coupon(useDate: $useDate, couponStatus: $couponStatus, couponId: $couponId, userNickname: $userNickname, reward: $reward, missions: $missions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponImpl &&
            (identical(other.useDate, useDate) || other.useDate == useDate) &&
            (identical(other.couponStatus, couponStatus) ||
                other.couponStatus == couponStatus) &&
            (identical(other.couponId, couponId) ||
                other.couponId == couponId) &&
            (identical(other.userNickname, userNickname) ||
                other.userNickname == userNickname) &&
            (identical(other.reward, reward) || other.reward == reward) &&
            const DeepCollectionEquality().equals(other._missions, _missions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, useDate, couponStatus, couponId,
      userNickname, reward, const DeepCollectionEquality().hash(_missions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponImplCopyWith<_$CouponImpl> get copyWith =>
      __$$CouponImplCopyWithImpl<_$CouponImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CouponImplToJson(
      this,
    );
  }
}

abstract class _Coupon implements Coupon {
  const factory _Coupon(
          {@JsonKey(name: 'useDate') required final String useDate,
          @JsonKey(name: 'status') required final String couponStatus,
          @JsonKey(name: 'couponId') required final String couponId,
          @JsonKey(name: 'userNickname') required final String userNickname,
          @JsonKey(name: 'reward') required final Reward reward,
          @JsonKey(name: 'missions') required final List<Mission> missions}) =
      _$CouponImpl;

  factory _Coupon.fromJson(Map<String, dynamic> json) = _$CouponImpl.fromJson;

  @override
  @JsonKey(name: 'useDate')
  String get useDate;
  @override
  @JsonKey(name: 'status')
  String get couponStatus;
  @override
  @JsonKey(name: 'couponId')
  String get couponId;
  @override
  @JsonKey(name: 'userNickname')
  String get userNickname;
  @override
  @JsonKey(name: 'reward')
  Reward get reward;
  @override
  @JsonKey(name: 'missions')
  List<Mission> get missions;
  @override
  @JsonKey(ignore: true)
  _$$CouponImplCopyWith<_$CouponImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
