import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meokq_boss/data/model/quest/quest.dart';

part 'get_quest_vo.freezed.dart';
part 'get_quest_vo.g.dart';

@freezed
class GetQuestVO with _$GetQuestVO {

  const factory GetQuestVO({
    @JsonKey(name: 'questId') required int id,
    @JsonKey(name: 'rewardTitle') required String rewardTitle,
    @JsonKey(name: 'missionTitle') required String missionTitle,
    @JsonKey(name: 'status') required QuestStatus questStatus,
  }) = _GetQuestVO;

  factory GetQuestVO.fromJson(Map<String, dynamic> json) =>
      _$GetQuestVOFromJson(json);
}