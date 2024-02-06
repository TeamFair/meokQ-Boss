// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_quest_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeleteQuestDTO _$DeleteQuestDTOFromJson(Map<String, dynamic> json) {
  return _DeleteQuestDTO.fromJson(json);
}

/// @nodoc
mixin _$DeleteQuestDTO {
  @JsonKey(name: 'questId')
  String get questId => throw _privateConstructorUsedError;
  @JsonKey(name: 'marketId')
  String get marketId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteQuestDTOCopyWith<DeleteQuestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteQuestDTOCopyWith<$Res> {
  factory $DeleteQuestDTOCopyWith(
          DeleteQuestDTO value, $Res Function(DeleteQuestDTO) then) =
      _$DeleteQuestDTOCopyWithImpl<$Res, DeleteQuestDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'questId') String questId,
      @JsonKey(name: 'marketId') String marketId});
}

/// @nodoc
class _$DeleteQuestDTOCopyWithImpl<$Res, $Val extends DeleteQuestDTO>
    implements $DeleteQuestDTOCopyWith<$Res> {
  _$DeleteQuestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questId = null,
    Object? marketId = null,
  }) {
    return _then(_value.copyWith(
      questId: null == questId
          ? _value.questId
          : questId // ignore: cast_nullable_to_non_nullable
              as String,
      marketId: null == marketId
          ? _value.marketId
          : marketId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteQuestDTOImplCopyWith<$Res>
    implements $DeleteQuestDTOCopyWith<$Res> {
  factory _$$DeleteQuestDTOImplCopyWith(_$DeleteQuestDTOImpl value,
          $Res Function(_$DeleteQuestDTOImpl) then) =
      __$$DeleteQuestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'questId') String questId,
      @JsonKey(name: 'marketId') String marketId});
}

/// @nodoc
class __$$DeleteQuestDTOImplCopyWithImpl<$Res>
    extends _$DeleteQuestDTOCopyWithImpl<$Res, _$DeleteQuestDTOImpl>
    implements _$$DeleteQuestDTOImplCopyWith<$Res> {
  __$$DeleteQuestDTOImplCopyWithImpl(
      _$DeleteQuestDTOImpl _value, $Res Function(_$DeleteQuestDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questId = null,
    Object? marketId = null,
  }) {
    return _then(_$DeleteQuestDTOImpl(
      questId: null == questId
          ? _value.questId
          : questId // ignore: cast_nullable_to_non_nullable
              as String,
      marketId: null == marketId
          ? _value.marketId
          : marketId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteQuestDTOImpl implements _DeleteQuestDTO {
  const _$DeleteQuestDTOImpl(
      {@JsonKey(name: 'questId') required this.questId,
      @JsonKey(name: 'marketId') required this.marketId});

  factory _$DeleteQuestDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteQuestDTOImplFromJson(json);

  @override
  @JsonKey(name: 'questId')
  final String questId;
  @override
  @JsonKey(name: 'marketId')
  final String marketId;

  @override
  String toString() {
    return 'DeleteQuestDTO(questId: $questId, marketId: $marketId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteQuestDTOImpl &&
            (identical(other.questId, questId) || other.questId == questId) &&
            (identical(other.marketId, marketId) ||
                other.marketId == marketId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, questId, marketId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteQuestDTOImplCopyWith<_$DeleteQuestDTOImpl> get copyWith =>
      __$$DeleteQuestDTOImplCopyWithImpl<_$DeleteQuestDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteQuestDTOImplToJson(
      this,
    );
  }
}

abstract class _DeleteQuestDTO implements DeleteQuestDTO {
  const factory _DeleteQuestDTO(
          {@JsonKey(name: 'questId') required final String questId,
          @JsonKey(name: 'marketId') required final String marketId}) =
      _$DeleteQuestDTOImpl;

  factory _DeleteQuestDTO.fromJson(Map<String, dynamic> json) =
      _$DeleteQuestDTOImpl.fromJson;

  @override
  @JsonKey(name: 'questId')
  String get questId;
  @override
  @JsonKey(name: 'marketId')
  String get marketId;
  @override
  @JsonKey(ignore: true)
  _$$DeleteQuestDTOImplCopyWith<_$DeleteQuestDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
