import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meokq_boss/data/model/mission/mission.dart';
import 'package:meokq_boss/data/model/reward/reward.dart';

part 'quest.freezed.dart';
part 'quest.g.dart';

@freezed
class Quest with _$Quest {
  const factory Quest({
    @JsonKey(name: 'questId') required String questId,
    @JsonKey(name: 'rewards') required List<Reward> rewards,
    @JsonKey(name: 'missions') required List<Mission> missions,
  }) = _Quest;

  factory Quest.fromJson(Map<String, dynamic> json) => _$QuestFromJson(json);
}
