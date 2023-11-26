import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/core/theme/text_theme.dart';
import 'package:meokq_boss/presentation/bloc/login/login_bloc.dart';
import 'package:meokq_boss/presentation/global/meokq_button.dart';
import 'package:meokq_boss/presentation/views/home/home_page.dart';
import 'package:meokq_boss/presentation/views/login/widget/login_button.dart';
import 'package:meokq_boss/presentation/views/login/widget/login_chip.dart';
import 'package:meokq_boss/presentation/views/sign_in/agree/agree_page.dart';
import 'package:meokq_boss/resources/resources.dart';

class LoginPage extends StatefulWidget {
  static const id = 'login_page';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        switch (state.loginStatus) {
          case LoginStatus.newUser:
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              builder: (childContext) {
                return LoginStatusBottomSheet(
                  loginStatus: state.loginStatus,
                  onTap: () => Navigator.of(context).pushNamed(AgreePage.id),
                );
              },
            );
          case LoginStatus.reject:
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              builder: (childContext) {
                return LoginStatusBottomSheet(
                  loginStatus: state.loginStatus,
                  content: '사업자 등록증을 첨부해주세요.',
                  onTap: () => Navigator.of(context).pushNamed(AgreePage.id),
                );
              },
            );
          case LoginStatus.review:
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              builder: (childContext) {
                return LoginStatusBottomSheet(
                  loginStatus: state.loginStatus,
                );
              },
            );

          case LoginStatus.firstComplete:
          case LoginStatus.done:
            Navigator.of(context).pushNamed(HomePage.id);

          case LoginStatus.failure:
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('로그인을 실패하였습니다.')),
            );
          default:
            break;
        }
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(Svgs.smileIconWithBg),
              const SizedBox(
                height: 18,
              ),
              const LoginChip(),
              const SizedBox(
                height: 76,
              ),
              const LoginButton(
                svgLink: Svgs.kakaoIcon,
                loginMethod: LoginMethod.kakao,
                color: Color(0xFFFEE500),
                isBorderNeed: false,
                textColor: Colors.black,
              ),
              const SizedBox(
                height: 16,
              ),
              const LoginButton(
                svgLink: Svgs.googleIcon,
                loginMethod: LoginMethod.google,
                color: Colors.white,
                isBorderNeed: true,
                textColor: Colors.black,
              ),
              const SizedBox(
                height: 16,
              ),
              // if (defaultTargetPlatform == TargetPlatform.iOS)
              const LoginButton(
                svgLink: Svgs.appleIcon,
                loginMethod: LoginMethod.apple,
                color: Colors.black,
                isBorderNeed: false,
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginStatusBottomSheet extends StatelessWidget {
  const LoginStatusBottomSheet({
    super.key,
    required this.loginStatus,
    this.content,
    this.onTap,
  });

  final LoginStatus loginStatus;

  final Function()? onTap;

  final String? content;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.9,
      child: Container(
        height: 800,
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(20, 178, 20, 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              Svgs.smileIconWithBg,
              width: 124,
              height: 124,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              loginStatus.title,
              textAlign: TextAlign.center,
              style: TextS.heading1().copyWith(fontSize: 19),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              loginStatus.subTitle + (content ?? ''),
              textAlign: TextAlign.center,
              style: TextS.content(),
            ),
            const Spacer(),
            if (onTap != null)
              MeokQButton(
                onTap: onTap!,
                text: loginStatus.button,
                canTap: true,
              ),
          ],
        ),
      ),
    );
  }
}
