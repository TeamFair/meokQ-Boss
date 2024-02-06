import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meokq_boss/data/model/mission/mission.dart';
import 'package:meokq_boss/data/model/reward/reward.dart';

part 'post_quest_vo.freezed.dart';
part 'post_quest_vo.g.dart';

@freezed
class PostQuestVO with _$PostQuestVO {
  const factory PostQuestVO({
    @JsonKey(name: 'marketId') required String marketId,
    @JsonKey(name: 'missions') required Mission mission,
    @JsonKey(name: 'rewards') required Reward reward,
  }) = _PostQuestVO;

  factory PostQuestVO.fromJson(Map<String, dynamic> json) =>
      _$PostQuestVOFromJson(json);
}