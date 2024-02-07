import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meokq_boss/data/model/mission/mission.dart';
import 'package:meokq_boss/data/model/reward/reward.dart';

part 'quest.freezed.dart';
part 'quest.g.dart';

@freezed
class Quest with _$Quest {
  const factory Quest({
    @JsonKey(name: 'questId') required int id,
    @JsonKey(name: 'rewards') required Reward reward,
    @JsonKey(name: 'missions') required Mission mission,
  }) = _Quest;

  factory Quest.fromJson(Map<String, dynamic> json) => _$QuestFromJson(json);
}
