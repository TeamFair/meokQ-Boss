import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meokq_boss/core/color/color_theme.dart';
import 'package:meokq_boss/presentation/bloc/login/login_bloc.dart';
import 'package:meokq_boss/presentation/bloc/splash/splash_bloc.dart';
import 'package:meokq_boss/presentation/views/home/home_page.dart';
import 'package:meokq_boss/presentation/views/login/login_page.dart';
import 'package:meokq_boss/presentation/views/sign_in/agree/agree_page.dart';
import 'package:meokq_boss/presentation/views/sign_in/apply_store/apply_store_page.dart';
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
    return Scaffold(
      body: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          switch (state.status) {
            case SplashStatus.needLogin:
              Navigator.of(context)
                  .pushNamedAndRemoveUntil(LoginPage.id, (route) => false);
            case SplashStatus.approved:
              Navigator.of(context)
                  .pushNamedAndRemoveUntil(HomePage.id, (route) => false);
            case SplashStatus.reject:
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
                    loginStatus: LoginStatus.reject,
                    content: state.comment,
                    onTap: () =>
                        Navigator.of(context).pushNamed(ApplyStorePage.id),
                  );
                },
              );
            case SplashStatus.underReview:
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                builder: (childContext) {
                  return const LoginStatusBottomSheet(
                    loginStatus: LoginStatus.review,
                  );
                },
              );
            case SplashStatus.register:
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
                    loginStatus: LoginStatus.register,
                    onTap: () => Navigator.of(context).pushNamed(AgreePage.id),
                  );
                },
              );
            case SplashStatus.failure:
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('화면 진입에 실패하였습니다. 다시 실행해주세요')),
              );
            case SplashStatus.inProgress:
              break;
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
      ),
    );
  }
}
