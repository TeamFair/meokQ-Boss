import 'package:flutter/material.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/data/model/quest/quest.dart';

class QuestBox extends StatelessWidget {
  const QuestBox({super.key, required this.quest});

  final Quest quest;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.fromLTRB(17, 9, 0, 9),
      height: 95,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
            width: 240,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  quest.reward.content,
                  style: TextS.heading1(),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  quest.mission.content,
                  style: TextS.caption2(),
                ),
              ],
            ),
          ),
          Container(
            width: 1,
            height: double.infinity,
            color: ColorS.divideGray,
          ),
          SizedBox(
            width: 88,
            height: 72,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                QuestStateChip(
                  questStatus: quest.questStatus,
                ),
                if (quest.questStatus.isOpen)
                  const SizedBox(
                    height: 6,
                  ),
                if (quest.questStatus.isOpen)
                  Text(
                    '90일 남음', // TODO: 퀘스크 상태에 따라 바뀜
                    style: TextS.body().copyWith(color: ColorS.applyGray),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class QuestStateChip extends StatelessWidget {
  const QuestStateChip({
    super.key,
    required this.questStatus,
  });

  final QuestStatus questStatus;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 20,
      padding: const EdgeInsets.symmetric(
        horizontal: 6,
        vertical: 4,
      ),
      decoration: ShapeDecoration(
        color: questStatus.backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      child: Text(
        questStatus.text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: questStatus.textColor,
          fontSize: 11,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
