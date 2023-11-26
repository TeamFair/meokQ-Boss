import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/presentation/bloc/login/login_bloc.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.svgLink,
    required this.loginMethod,
    required this.color,
    required this.isBorderNeed,
    required this.textColor,
  });

  final String svgLink;
  final LoginMethod loginMethod;
  final Color color;
  final bool isBorderNeed;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<LoginBloc>().add(LoginButtonTap(loginMethod: loginMethod)),
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
              loginMethod.buttonText,
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
