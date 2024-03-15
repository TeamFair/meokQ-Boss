import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/resources/resources.dart';

class ChallengeBox extends StatelessWidget {
  const ChallengeBox({
    super.key,
    required this.rewardTitle,
    required this.missionTitle,
    required this.userNickName,
  });

  final String rewardTitle;
  final String missionTitle;
  final String userNickName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 95,
      child: Stack(
        children: [
          SvgPicture.asset(
            Svgs.challengeButton,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17, top: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 52,
                  width: 240,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        rewardTitle,
                        style: TextS.heading1(),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        missionTitle,
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
                      Container(
                        width: 50,
                        height: 22,
                        margin: const EdgeInsets.symmetric(horizontal: 22),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 3,
                        ),
                        decoration: ShapeDecoration(
                          color: ColorS.background,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        child: Text(
                          userNickName,
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
}
