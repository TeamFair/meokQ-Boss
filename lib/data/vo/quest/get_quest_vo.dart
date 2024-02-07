import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meokq_boss/core/color/color_theme.dart';

part 'get_quest_vo.freezed.dart';
part 'get_quest_vo.g.dart';

enum QuestStatus {
  checking,
  review,
  open;

  factory QuestStatus.stringToQuestStatus(String string) => switch (string) {
    'OPEN' => QuestStatus.open,
    'UNDER_REVIEW' => QuestStatus.review,
    _ => QuestStatus.checking,
  };

  String get text => switch (this) {
        QuestStatus.open => '게시중',
        QuestStatus.review => '대기상태',
        QuestStatus.checking => '검토중',
      };

  Color get backgroundColor => switch (this) {
        QuestStatus.open => ColorS.badgeBlue,
        QuestStatus.review => ColorS.badgeRed,
        QuestStatus.checking => ColorS.background,
      };

  Color get textColor => switch (this) {
        QuestStatus.open => const Color(0xFF329CE9),
        QuestStatus.review => const Color(0xFFF16868),
        QuestStatus.checking => ColorS.applyGray,
      };

  bool get isOpen => this == QuestStatus.open;

  bool get isChecking => this == QuestStatus.checking;
}

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