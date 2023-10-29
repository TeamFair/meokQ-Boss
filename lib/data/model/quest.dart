import 'package:freezed_annotation/freezed_annotation.dart';

part 'quest.freezed.dart';
part 'quest.g.dart';

@freezed
class Quest with _$Quest {

  const factory Quest({
    required int id,
    required String reward,
    required String mission,

  }) = _Quest;

  factory Quest.fromJson(Map<String, dynamic> json) =>
      _$QuestFromJson(json);
}