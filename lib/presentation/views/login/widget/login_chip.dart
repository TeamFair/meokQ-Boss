import 'package:flutter/widgets.dart';
import 'package:meokq_boss/core/color/color_theme.dart';

class LoginChip extends StatelessWidget {
  const LoginChip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      height: 34,
      padding: const EdgeInsets.symmetric(vertical: 8),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: ColorS.badgeYellow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      alignment: Alignment.center,
      child: const Text(
        '가게 사장님용',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: ColorS.textYellow,
          fontSize: 14,
          fontFamily: 'Pretendard',
          fontWeight: FontWeight.w600,
          letterSpacing: -0.40,
        ),
      ),
    );
  }
}
