// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'publish_quest_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PublishQuestDTO _$PublishQuestDTOFromJson(Map<String, dynamic> json) {
  return _PublishQuestDTO.fromJson(json);
}

/// @nodoc
mixin _$PublishQuestDTO {
  @JsonKey(name: 'marketId')
  String get marketId => throw _privateConstructorUsedError;
  @JsonKey(name: 'questId')
  String get questId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ticketCount')
  int get ticketCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PublishQuestDTOCopyWith<PublishQuestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublishQuestDTOCopyWith<$Res> {
  factory $PublishQuestDTOCopyWith(
          PublishQuestDTO value, $Res Function(PublishQuestDTO) then) =
      _$PublishQuestDTOCopyWithImpl<$Res, PublishQuestDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'marketId') String marketId,
      @JsonKey(name: 'questId') String questId,
      @JsonKey(name: 'ticketCount') int ticketCount});
}

/// @nodoc
class _$PublishQuestDTOCopyWithImpl<$Res, $Val extends PublishQuestDTO>
    implements $PublishQuestDTOCopyWith<$Res> {
  _$PublishQuestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketId = null,
    Object? questId = null,
    Object? ticketCount = null,
  }) {
    return _then(_value.copyWith(
      marketId: null == marketId
          ? _value.marketId
          : marketId // ignore: cast_nullable_to_non_nullable
              as String,
      questId: null == questId
          ? _value.questId
          : questId // ignore: cast_nullable_to_non_nullable
              as String,
      ticketCount: null == ticketCount
          ? _value.ticketCount
          : ticketCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PublishQuestDTOImplCopyWith<$Res>
    implements $PublishQuestDTOCopyWith<$Res> {
  factory _$$PublishQuestDTOImplCopyWith(_$PublishQuestDTOImpl value,
          $Res Function(_$PublishQuestDTOImpl) then) =
      __$$PublishQuestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'marketId') String marketId,
      @JsonKey(name: 'questId') String questId,
      @JsonKey(name: 'ticketCount') int ticketCount});
}

/// @nodoc
class __$$PublishQuestDTOImplCopyWithImpl<$Res>
    extends _$PublishQuestDTOCopyWithImpl<$Res, _$PublishQuestDTOImpl>
    implements _$$PublishQuestDTOImplCopyWith<$Res> {
  __$$PublishQuestDTOImplCopyWithImpl(
      _$PublishQuestDTOImpl _value, $Res Function(_$PublishQuestDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketId = null,
    Object? questId = null,
    Object? ticketCount = null,
  }) {
    return _then(_$PublishQuestDTOImpl(
      marketId: null == marketId
          ? _value.marketId
          : marketId // ignore: cast_nullable_to_non_nullable
              as String,
      questId: null == questId
          ? _value.questId
          : questId // ignore: cast_nullable_to_non_nullable
              as String,
      ticketCount: null == ticketCount
          ? _value.ticketCount
          : ticketCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PublishQuestDTOImpl implements _PublishQuestDTO {
  const _$PublishQuestDTOImpl(
      {@JsonKey(name: 'marketId') required this.marketId,
      @JsonKey(name: 'questId') required this.questId,
      @JsonKey(name: 'ticketCount') required this.ticketCount});

  factory _$PublishQuestDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PublishQuestDTOImplFromJson(json);

  @override
  @JsonKey(name: 'marketId')
  final String marketId;
  @override
  @JsonKey(name: 'questId')
  final String questId;
  @override
  @JsonKey(name: 'ticketCount')
  final int ticketCount;

  @override
  String toString() {
    return 'PublishQuestDTO(marketId: $marketId, questId: $questId, ticketCount: $ticketCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublishQuestDTOImpl &&
            (identical(other.marketId, marketId) ||
                other.marketId == marketId) &&
            (identical(other.questId, questId) || other.questId == questId) &&
            (identical(other.ticketCount, ticketCount) ||
                other.ticketCount == ticketCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, marketId, questId, ticketCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PublishQuestDTOImplCopyWith<_$PublishQuestDTOImpl> get copyWith =>
      __$$PublishQuestDTOImplCopyWithImpl<_$PublishQuestDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PublishQuestDTOImplToJson(
      this,
    );
  }
}

abstract class _PublishQuestDTO implements PublishQuestDTO {
  const factory _PublishQuestDTO(
          {@JsonKey(name: 'marketId') required final String marketId,
          @JsonKey(name: 'questId') required final String questId,
          @JsonKey(name: 'ticketCount') required final int ticketCount}) =
      _$PublishQuestDTOImpl;

  factory _PublishQuestDTO.fromJson(Map<String, dynamic> json) =
      _$PublishQuestDTOImpl.fromJson;

  @override
  @JsonKey(name: 'marketId')
  String get marketId;
  @override
  @JsonKey(name: 'questId')
  String get questId;
  @override
  @JsonKey(name: 'ticketCount')
  int get ticketCount;
  @override
  @JsonKey(ignore: true)
  _$$PublishQuestDTOImplCopyWith<_$PublishQuestDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
