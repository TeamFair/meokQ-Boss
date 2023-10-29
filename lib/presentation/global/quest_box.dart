import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/data/model/quest.dart';
import 'package:meokq_boss/resources/resources.dart';

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
      padding: const EdgeInsets.fromLTRB(17, 24, 17, 20),
      height: 95,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  quest.reward,
                  style: TextS.heading1(),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  quest.mission,
                  style: TextS.caption2(),
                ),
              ],
            ),
          ),
          SvgPicture.asset(Svgs.rightArrowIcon),
        ],
      ),
    );
  }
}
