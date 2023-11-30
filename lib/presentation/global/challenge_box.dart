import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/data/model/challenge/challenge.dart';
import 'package:meokq_boss/resources/resources.dart';

class ChallengeBox extends StatelessWidget {
  const ChallengeBox({super.key, required this.challenge});

  final Challenge challenge;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: Stack(
        children: [
          SvgPicture.asset(
            Svgs.challengeButton,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17, top: 18),
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
                        challenge.quest.reward.content,
                        style: TextS.heading1(),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        challenge.quest.mission.content,
                        style: TextS.caption2(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 65,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (challenge.challengeStatus.isIssued)
                        Text(
                          challenge.day ?? '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: textColor,
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      if (challenge.challengeStatus.isIssued)
                        Text(
                          challenge.challengeStatus.text,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: textColor,
                            fontSize: 12,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                            height: 1.5,
                          ),
                        ),
                      if (challenge.challengeStatus.isIssued)
                        const SizedBox(
                          height: 8,
                        ),
                      Container(
                        width: 50,
                        height: 20,
                        margin: const EdgeInsets.symmetric(horizontal: 22),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 4,
                        ),
                        decoration: ShapeDecoration(
                          color: ColorS.background,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        child: Text(
                          challenge.applicantId,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: ColorS.gray400,
                            fontSize: 11,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color get textColor => switch (challenge.challengeStatus) {
        ChallengeStatus.notIssued => ColorS.gray400,
        ChallengeStatus.issuedComplete => ColorS.blue,
        ChallengeStatus.usedComplete => ColorS.red,
      };
}
