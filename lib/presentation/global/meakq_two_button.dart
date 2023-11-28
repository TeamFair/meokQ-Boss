import 'package:flutter/material.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/presentation/global/meokq_button.dart';

class MeokQTwoButton extends StatelessWidget {
  const MeokQTwoButton({
    super.key,
    this.firstText = '이전',
    this.secondText = '다음',
    this.firstButtonTap,
    required this.secondButtonTap,
    this.firstColor = ColorS.gray100,
    this.secondColor = ColorS.buttonYellow,
    this.secondButtonCanTap = true,
    this.padding = 20,
  });

  final String firstText;

  final String secondText;

  final Function()? firstButtonTap;

  final Function() secondButtonTap;

  final Color firstColor;

  final Color secondColor;

  final bool secondButtonCanTap;

  final double padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: padding,
      ),
      child: Row(
        children: [
          Expanded(
            child: MeokQButton(
              onTap: firstButtonTap ?? () => Navigator.pop(context),
              text: firstText,
              canTap: true,
              activeColor: firstColor,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: MeokQButton(
              onTap: secondButtonTap,
              text: secondText,
              canTap: secondButtonCanTap,
              activeColor: secondColor,
            ),
          ),
        ],
      ),
    );
  }
}
