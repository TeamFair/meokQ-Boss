// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MarketTime _$MarketTimeFromJson(Map<String, dynamic> json) {
  return _MarketTime.fromJson(json);
}

/// @nodoc
mixin _$MarketTime {
  @JsonKey(name: 'weekDay', defaultValue: '')
  String get weekDay => throw _privateConstructorUsedError;
  @JsonKey(name: 'openTime', defaultValue: '')
  String get openTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'closeTime', defaultValue: '')
  String get closeTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'holidayYn', defaultValue: '')
  String get holidayYn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketTimeCopyWith<MarketTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketTimeCopyWith<$Res> {
  factory $MarketTimeCopyWith(
          MarketTime value, $Res Function(MarketTime) then) =
      _$MarketTimeCopyWithImpl<$Res, MarketTime>;
  @useResult
  $Res call(
      {@JsonKey(name: 'weekDay', defaultValue: '') String weekDay,
      @JsonKey(name: 'openTime', defaultValue: '') String openTime,
      @JsonKey(name: 'closeTime', defaultValue: '') String closeTime,
      @JsonKey(name: 'holidayYn', defaultValue: '') String holidayYn});
}

/// @nodoc
class _$MarketTimeCopyWithImpl<$Res, $Val extends MarketTime>
    implements $MarketTimeCopyWith<$Res> {
  _$MarketTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekDay = null,
    Object? openTime = null,
    Object? closeTime = null,
    Object? holidayYn = null,
  }) {
    return _then(_value.copyWith(
      weekDay: null == weekDay
          ? _value.weekDay
          : weekDay // ignore: cast_nullable_to_non_nullable
              as String,
      openTime: null == openTime
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as String,
      closeTime: null == closeTime
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as String,
      holidayYn: null == holidayYn
          ? _value.holidayYn
          : holidayYn // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarketTimeImplCopyWith<$Res>
    implements $MarketTimeCopyWith<$Res> {
  factory _$$MarketTimeImplCopyWith(
          _$MarketTimeImpl value, $Res Function(_$MarketTimeImpl) then) =
      __$$MarketTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'weekDay', defaultValue: '') String weekDay,
      @JsonKey(name: 'openTime', defaultValue: '') String openTime,
      @JsonKey(name: 'closeTime', defaultValue: '') String closeTime,
      @JsonKey(name: 'holidayYn', defaultValue: '') String holidayYn});
}

/// @nodoc
class __$$MarketTimeImplCopyWithImpl<$Res>
    extends _$MarketTimeCopyWithImpl<$Res, _$MarketTimeImpl>
    implements _$$MarketTimeImplCopyWith<$Res> {
  __$$MarketTimeImplCopyWithImpl(
      _$MarketTimeImpl _value, $Res Function(_$MarketTimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weekDay = null,
    Object? openTime = null,
    Object? closeTime = null,
    Object? holidayYn = null,
  }) {
    return _then(_$MarketTimeImpl(
      weekDay: null == weekDay
          ? _value.weekDay
          : weekDay // ignore: cast_nullable_to_non_nullable
              as String,
      openTime: null == openTime
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as String,
      closeTime: null == closeTime
          ? _value.closeTime
          : closeTime // ignore: cast_nullable_to_non_nullable
              as String,
      holidayYn: null == holidayYn
          ? _value.holidayYn
          : holidayYn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketTimeImpl implements _MarketTime {
  const _$MarketTimeImpl(
      {@JsonKey(name: 'weekDay', defaultValue: '') required this.weekDay,
      @JsonKey(name: 'openTime', defaultValue: '') required this.openTime,
      @JsonKey(name: 'closeTime', defaultValue: '') required this.closeTime,
      @JsonKey(name: 'holidayYn', defaultValue: '') required this.holidayYn});

  factory _$MarketTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketTimeImplFromJson(json);

  @override
  @JsonKey(name: 'weekDay', defaultValue: '')
  final String weekDay;
  @override
  @JsonKey(name: 'openTime', defaultValue: '')
  final String openTime;
  @override
  @JsonKey(name: 'closeTime', defaultValue: '')
  final String closeTime;
  @override
  @JsonKey(name: 'holidayYn', defaultValue: '')
  final String holidayYn;

  @override
  String toString() {
    return 'MarketTime(weekDay: $weekDay, openTime: $openTime, closeTime: $closeTime, holidayYn: $holidayYn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketTimeImpl &&
            (identical(other.weekDay, weekDay) || other.weekDay == weekDay) &&
            (identical(other.openTime, openTime) ||
                other.openTime == openTime) &&
            (identical(other.closeTime, closeTime) ||
                other.closeTime == closeTime) &&
            (identical(other.holidayYn, holidayYn) ||
                other.holidayYn == holidayYn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, weekDay, openTime, closeTime, holidayYn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketTimeImplCopyWith<_$MarketTimeImpl> get copyWith =>
      __$$MarketTimeImplCopyWithImpl<_$MarketTimeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketTimeImplToJson(
      this,
    );
  }
}

abstract class _MarketTime implements MarketTime {
  const factory _MarketTime(
      {@JsonKey(name: 'weekDay', defaultValue: '')
      required final String weekDay,
      @JsonKey(name: 'openTime', defaultValue: '')
      required final String openTime,
      @JsonKey(name: 'closeTime', defaultValue: '')
      required final String closeTime,
      @JsonKey(name: 'holidayYn', defaultValue: '')
      required final String holidayYn}) = _$MarketTimeImpl;

  factory _MarketTime.fromJson(Map<String, dynamic> json) =
      _$MarketTimeImpl.fromJson;

  @override
  @JsonKey(name: 'weekDay', defaultValue: '')
  String get weekDay;
  @override
  @JsonKey(name: 'openTime', defaultValue: '')
  String get openTime;
  @override
  @JsonKey(name: 'closeTime', defaultValue: '')
  String get closeTime;
  @override
  @JsonKey(name: 'holidayYn', defaultValue: '')
  String get holidayYn;
  @override
  @JsonKey(ignore: true)
  _$$MarketTimeImplCopyWith<_$MarketTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
