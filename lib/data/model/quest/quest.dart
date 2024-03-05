import 'package:freezed_annotation/freezed_annotation.dart';

part 'quest.freezed.dart';
part 'quest.g.dart';

@freezed
class Quest with _$Quest {
  const factory Quest({
    @JsonKey(name: 'questId') required String questId,
    @JsonKey(name: 'rewardTitles') required List<String> rewards,
    @JsonKey(name: 'missionTitles') required List<String> missions,
  }) = _Quest;

  factory Quest.fromJson(Map<String, dynamic> json) => _$QuestFromJson(json);
}
