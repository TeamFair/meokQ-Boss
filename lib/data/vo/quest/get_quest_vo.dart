import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meokq_boss/core/color/color_theme.dart';

part 'get_quest_vo.freezed.dart';
part 'get_quest_vo.g.dart';

enum QuestStatus {
  published,
  underReivew,
  completed;

  factory QuestStatus.stringToQuestStatus(String string) => switch (string) {
        'COMPLETED' => QuestStatus.completed,
        'UNDER_REVIEW' => QuestStatus.underReivew,
        _ => QuestStatus.published,
      };

  String get text => switch (this) {
        QuestStatus.completed => '게시중',
        QuestStatus.underReivew => '대기상태',
        QuestStatus.published => '검토중',
      };

  Color get backgroundColor => switch (this) {
        QuestStatus.completed => ColorS.badgeBlue,
        QuestStatus.underReivew => ColorS.background,
        QuestStatus.published => ColorS.badgeRed,
      };

  Color get textColor => switch (this) {
        QuestStatus.completed => const Color(0xFF329CE9),
        QuestStatus.underReivew => ColorS.applyGray,
        QuestStatus.published => const Color(0xFFF16868),
      };

  bool get isOpen => this == QuestStatus.completed;

  bool get isPublished => this == QuestStatus.published;

  bool get isUnderReview => this == QuestStatus.underReivew;
}

@freezed
class QuestListVO with _$QuestListVO {
  const factory QuestListVO({
    @JsonKey(name: 'questId') required String questId,
    @JsonKey(name: 'rewardTitle') required String rewardTitle,
    @JsonKey(name: 'missionTitle') required String missionTitle,
    @JsonKey(name: 'status') required String questStatus,
  }) = _QuestListVO;

  factory QuestListVO.fromJson(Map<String, dynamic> json) =>
      _$QuestListVOFromJson(json);
}
