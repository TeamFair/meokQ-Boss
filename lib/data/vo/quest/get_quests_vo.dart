import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meokq_boss/data/vo/quest/get_quest_vo.dart';

part 'get_quests_vo.freezed.dart';
part 'get_quests_vo.g.dart';

@freezed
class GetQuests with _$GetQuests {

  const factory GetQuests({
    required List<GetQuestVO> questList,
  }) = _GetQuests;

  factory GetQuests.fromJson(Map<String, dynamic> json) =>
      _$GetQuestsFromJson(json);
}