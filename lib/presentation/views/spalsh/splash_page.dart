import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/presentation/bloc/splash/splash_bloc.dart';
import 'package:meokq_boss/presentation/views/login/login_page.dart';
import 'package:meokq_boss/resources/resources.dart';

class SplashPage extends StatefulWidget {
  static const id = 'splash_page';
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    final splashBloc = BlocProvider.of<SplashBloc>(context);
    splashBloc.add(const SplashInit());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        if (state.status == SplashStatus.success) {
          Navigator.of(context)
              .pushNamedAndRemoveUntil(LoginPage.id, (route) => false);
        }
      },
      child: Container(
        height: double.infinity,
        width: double.infinity,
        color: ColorS.primary,
        child: Center(
          child: SvgPicture.asset(Svgs.smileIcon),
        ),
      ),
    );
  }
}
