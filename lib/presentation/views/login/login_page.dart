import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/presentation/bloc/login/login_bloc.dart';
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
        switch (state.status) {
          case LoginStatus.init:
          case LoginStatus.inProgress:
          case LoginStatus.success:
            Navigator.of(context)
                .pushNamedAndRemoveUntil(HomePage.id, (route) => false);
          case LoginStatus.unknown:
            Navigator.of(context)
                .pushNamedAndRemoveUntil(HomePage.id, (route) => false);
          case LoginStatus.failure:
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('로그인을 실패하였습니다.')),
            );
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
              LoginButton(
                svgLink: Svgs.kakaoIcon,
                text: '카카오로 로그인하기',
                color: const Color(0xFFFEE500),
                isBorderNeed: false,
                textColor: Colors.black,
                onTap: () {},
              ),
              const SizedBox(
                height: 16,
              ),
              LoginButton(
                svgLink: Svgs.googleIcon,
                text: 'Google로 로그인하기',
                color: Colors.white,
                isBorderNeed: true,
                textColor: Colors.black,
                onTap: () {
                  Navigator.of(context).pushNamed(AgreePage.id);
                },
              ),
              const SizedBox(
                height: 16,
              ),
              LoginButton(
                svgLink: Svgs.appleIcon,
                text: 'Apple로 로그인하기',
                color: Colors.black,
                isBorderNeed: false,
                textColor: Colors.white,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
