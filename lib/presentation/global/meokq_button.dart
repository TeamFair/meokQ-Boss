import 'package:flutter/material.dart';
import 'package:meokq_boss/core/color/color_theme.dart';

class MeokQButton extends StatelessWidget {
  const MeokQButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.canTap,
    this.activeColor = ColorS.buttonYellow,
  });

  final Function() onTap;

  final String text;

  final bool canTap;

  final Color activeColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: canTap ? onTap : () {},
      child: Container(
        width: double.infinity,
        height: 50,
        padding: const EdgeInsets.symmetric(
          vertical: 16,
        ),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: canTap ? activeColor : ColorS.gray100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: ColorS.gray400,
            fontSize: 16,
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
