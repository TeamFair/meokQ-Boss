import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.svgLink,
    required this.text,
    required this.color,
    required this.isBorderNeed,
    required this.textColor,
    required this.onTap,
  });

  final String svgLink;
  final String text;
  final Color color;
  final bool isBorderNeed;
  final Color textColor;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap,
      child: Container(
        width: 269,
        height: 50,
        padding: const EdgeInsets.fromLTRB(18, 16, 0, 16),
        decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: isBorderNeed ? 1 : 0,
              color: const Color(0xFFD1D1D1),
            ),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(svgLink),
            const SizedBox(
              width: 53,
            ),
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: 14,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
