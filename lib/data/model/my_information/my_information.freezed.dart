// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_information.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyInformation _$MyInformationFromJson(Map<String, dynamic> json) {
  return _MyInformation.fromJson(json);
}

/// @nodoc
mixin _$MyInformation {
  String get logoUrl => throw _privateConstructorUsedError;
  int get questCount => throw _privateConstructorUsedError;
  int get ticketAccount => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  List<String> get businessDays => throw _privateConstructorUsedError;
  String get open => throw _privateConstructorUsedError;
  String get close => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyInformationCopyWith<MyInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyInformationCopyWith<$Res> {
  factory $MyInformationCopyWith(
          MyInformation value, $Res Function(MyInformation) then) =
      _$MyInformationCopyWithImpl<$Res, MyInformation>;
  @useResult
  $Res call(
      {String logoUrl,
      int questCount,
      int ticketAccount,
      String address,
      List<String> businessDays,
      String open,
      String close,
      String phone});
}

/// @nodoc
class _$MyInformationCopyWithImpl<$Res, $Val extends MyInformation>
    implements $MyInformationCopyWith<$Res> {
  _$MyInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logoUrl = null,
    Object? questCount = null,
    Object? ticketAccount = null,
    Object? address = null,
    Object? businessDays = null,
    Object? open = null,
    Object? close = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      logoUrl: null == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      questCount: null == questCount
          ? _value.questCount
          : questCount // ignore: cast_nullable_to_non_nullable
              as int,
      ticketAccount: null == ticketAccount
          ? _value.ticketAccount
          : ticketAccount // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      businessDays: null == businessDays
          ? _value.businessDays
          : businessDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as String,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyInformationImplCopyWith<$Res>
    implements $MyInformationCopyWith<$Res> {
  factory _$$MyInformationImplCopyWith(
          _$MyInformationImpl value, $Res Function(_$MyInformationImpl) then) =
      __$$MyInformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String logoUrl,
      int questCount,
      int ticketAccount,
      String address,
      List<String> businessDays,
      String open,
      String close,
      String phone});
}

/// @nodoc
class __$$MyInformationImplCopyWithImpl<$Res>
    extends _$MyInformationCopyWithImpl<$Res, _$MyInformationImpl>
    implements _$$MyInformationImplCopyWith<$Res> {
  __$$MyInformationImplCopyWithImpl(
      _$MyInformationImpl _value, $Res Function(_$MyInformationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logoUrl = null,
    Object? questCount = null,
    Object? ticketAccount = null,
    Object? address = null,
    Object? businessDays = null,
    Object? open = null,
    Object? close = null,
    Object? phone = null,
  }) {
    return _then(_$MyInformationImpl(
      logoUrl: null == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      questCount: null == questCount
          ? _value.questCount
          : questCount // ignore: cast_nullable_to_non_nullable
              as int,
      ticketAccount: null == ticketAccount
          ? _value.ticketAccount
          : ticketAccount // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      businessDays: null == businessDays
          ? _value._businessDays
          : businessDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as String,
      close: null == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyInformationImpl implements _MyInformation {
  const _$MyInformationImpl(
      {required this.logoUrl,
      required this.questCount,
      required this.ticketAccount,
      required this.address,
      required final List<String> businessDays,
      required this.open,
      required this.close,
      required this.phone})
      : _businessDays = businessDays;

  factory _$MyInformationImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyInformationImplFromJson(json);

  @override
  final String logoUrl;
  @override
  final int questCount;
  @override
  final int ticketAccount;
  @override
  final String address;
  final List<String> _businessDays;
  @override
  List<String> get businessDays {
    if (_businessDays is EqualUnmodifiableListView) return _businessDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_businessDays);
  }

  @override
  final String open;
  @override
  final String close;
  @override
  final String phone;

  @override
  String toString() {
    return 'MyInformation(logoUrl: $logoUrl, questCount: $questCount, ticketAccount: $ticketAccount, address: $address, businessDays: $businessDays, open: $open, close: $close, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyInformationImpl &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.questCount, questCount) ||
                other.questCount == questCount) &&
            (identical(other.ticketAccount, ticketAccount) ||
                other.ticketAccount == ticketAccount) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality()
                .equals(other._businessDays, _businessDays) &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.close, close) || other.close == close) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      logoUrl,
      questCount,
      ticketAccount,
      address,
      const DeepCollectionEquality().hash(_businessDays),
      open,
      close,
      phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyInformationImplCopyWith<_$MyInformationImpl> get copyWith =>
      __$$MyInformationImplCopyWithImpl<_$MyInformationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyInformationImplToJson(
      this,
    );
  }
}

abstract class _MyInformation implements MyInformation {
  const factory _MyInformation(
      {required final String logoUrl,
      required final int questCount,
      required final int ticketAccount,
      required final String address,
      required final List<String> businessDays,
      required final String open,
      required final String close,
      required final String phone}) = _$MyInformationImpl;

  factory _MyInformation.fromJson(Map<String, dynamic> json) =
      _$MyInformationImpl.fromJson;

  @override
  String get logoUrl;
  @override
  int get questCount;
  @override
  int get ticketAccount;
  @override
  String get address;
  @override
  List<String> get businessDays;
  @override
  String get open;
  @override
  String get close;
  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$MyInformationImplCopyWith<_$MyInformationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
