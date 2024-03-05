import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meokq_boss/data/model/mission/mission.dart';
import 'package:meokq_boss/data/model/reward/reward.dart';

part 'challenge_quest.freezed.dart';
part 'challenge_quest.g.dart';

@freezed
class ChallengeQuest with _$ChallengeQuest {

  const factory ChallengeQuest({
    @JsonKey(name: 'questId') required String questId,
    @JsonKey(name: 'rewards') required List<Reward> rewards,
    @JsonKey(name: 'missions') required List<Mission> missions,
  }) = _ChallengeQuest;

  factory ChallengeQuest.fromJson(Map<String, dynamic> json) =>
      _$ChallengeQuestFromJson(json);
}