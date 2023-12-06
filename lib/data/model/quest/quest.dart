import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/data/model/mission/mission.dart';
import 'package:meokq_boss/data/model/reward/reward.dart';

part 'quest.freezed.dart';
part 'quest.g.dart';

enum QuestStatus {
  checking,
  review,
  open;

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
class Quest with _$Quest {
  const factory Quest({
    required int id,
    required Reward reward,
    required Mission mission,
    required QuestStatus questStatus,
  }) = _Quest;

  factory Quest.fromJson(Map<String, dynamic> json) => _$QuestFromJson(json);
}
