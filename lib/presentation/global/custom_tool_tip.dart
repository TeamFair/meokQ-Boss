import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/resources/resources.dart';

class CustomToolTip extends StatelessWidget {
  const CustomToolTip({
    super.key,
    required this.onTap,
    required this.controller,
    required this.title,
    required this.content,
    this.width = 218,
  });

  final Function() onTap;

  final JustTheController controller;

  final String title;

  final String content;

  final double? width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: JustTheTooltip(
        controller: controller,
        content: Container(
          width: width,
          height: 100,
          padding: const EdgeInsets.all(14),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x26000000),
                blurRadius: 20,
                offset: Offset(0, 4),
                spreadRadius: 0,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextS.button().copyWith(
                  fontSize: 14,
                  color: ColorS.gray400,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                content,
                style: TextS.caption1().copyWith(
                  color: ColorS.gray400,
                  height: 1.3,
                ),
              ),
            ],
          ),
        ),
        child: SvgPicture.asset(
          Svgs.questionMarkIcon,
        ),
      ),
    );
  }
}
