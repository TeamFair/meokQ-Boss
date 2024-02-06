import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_quest_vo.freezed.dart';
part 'get_quest_vo.g.dart';

@freezed
class GetQuestVO with _$GetQuestVO {

  const factory GetQuestVO({
    @JsonKey(name: 'questId') required String questId,
    @JsonKey(name: 'rewardTitle') required String rewardTitle,
    @JsonKey(name: 'missionTitle') required String missionTitle,
    @JsonKey(name: 'status') required String questStatus,
  }) = _GetQuestVO;

  factory GetQuestVO.fromJson(Map<String, dynamic> json) =>
      _$GetQuestVOFromJson(json);
}