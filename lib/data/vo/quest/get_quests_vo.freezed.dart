// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_quests_vo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetQuests _$GetQuestsFromJson(Map<String, dynamic> json) {
  return _GetQuests.fromJson(json);
}

/// @nodoc
mixin _$GetQuests {
  List<GetQuestVO> get questList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetQuestsCopyWith<GetQuests> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetQuestsCopyWith<$Res> {
  factory $GetQuestsCopyWith(GetQuests value, $Res Function(GetQuests) then) =
      _$GetQuestsCopyWithImpl<$Res, GetQuests>;
  @useResult
  $Res call({List<GetQuestVO> questList});
}

/// @nodoc
class _$GetQuestsCopyWithImpl<$Res, $Val extends GetQuests>
    implements $GetQuestsCopyWith<$Res> {
  _$GetQuestsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questList = null,
  }) {
    return _then(_value.copyWith(
      questList: null == questList
          ? _value.questList
          : questList // ignore: cast_nullable_to_non_nullable
              as List<GetQuestVO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetQuestsImplCopyWith<$Res>
    implements $GetQuestsCopyWith<$Res> {
  factory _$$GetQuestsImplCopyWith(
          _$GetQuestsImpl value, $Res Function(_$GetQuestsImpl) then) =
      __$$GetQuestsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GetQuestVO> questList});
}

/// @nodoc
class __$$GetQuestsImplCopyWithImpl<$Res>
    extends _$GetQuestsCopyWithImpl<$Res, _$GetQuestsImpl>
    implements _$$GetQuestsImplCopyWith<$Res> {
  __$$GetQuestsImplCopyWithImpl(
      _$GetQuestsImpl _value, $Res Function(_$GetQuestsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questList = null,
  }) {
    return _then(_$GetQuestsImpl(
      questList: null == questList
          ? _value._questList
          : questList // ignore: cast_nullable_to_non_nullable
              as List<GetQuestVO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetQuestsImpl implements _GetQuests {
  const _$GetQuestsImpl({required final List<GetQuestVO> questList})
      : _questList = questList;

  factory _$GetQuestsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetQuestsImplFromJson(json);

  final List<GetQuestVO> _questList;
  @override
  List<GetQuestVO> get questList {
    if (_questList is EqualUnmodifiableListView) return _questList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questList);
  }

  @override
  String toString() {
    return 'GetQuests(questList: $questList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetQuestsImpl &&
            const DeepCollectionEquality()
                .equals(other._questList, _questList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_questList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetQuestsImplCopyWith<_$GetQuestsImpl> get copyWith =>
      __$$GetQuestsImplCopyWithImpl<_$GetQuestsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetQuestsImplToJson(
      this,
    );
  }
}

abstract class _GetQuests implements GetQuests {
  const factory _GetQuests({required final List<GetQuestVO> questList}) =
      _$GetQuestsImpl;

  factory _GetQuests.fromJson(Map<String, dynamic> json) =
      _$GetQuestsImpl.fromJson;

  @override
  List<GetQuestVO> get questList;
  @override
  @JsonKey(ignore: true)
  _$$GetQuestsImplCopyWith<_$GetQuestsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
