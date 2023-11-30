import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/presentation/bloc/agreement_permission/agreement_permission_bloc.dart';
import 'package:meokq_boss/presentation/bloc/boss_information/boss_information_bloc.dart';
import 'package:meokq_boss/presentation/bloc/bottom_navigation_controller/bnc_bloc.dart';
import 'package:meokq_boss/presentation/bloc/login/login_bloc.dart';
import 'package:meokq_boss/presentation/bloc/quest_add/quest_add_bloc.dart';
import 'package:meokq_boss/presentation/bloc/quest_detail/quest_detail_bloc.dart';
import 'package:meokq_boss/presentation/bloc/setting/setting_bloc.dart';
import 'package:meokq_boss/presentation/bloc/splash/splash_bloc.dart';
import 'package:meokq_boss/presentation/bloc/store_information/store_information_bloc.dart';
import 'package:meokq_boss/presentation/views/home/home_page.dart';
import 'package:meokq_boss/presentation/views/login/login_page.dart';
import 'package:meokq_boss/presentation/views/quest/quest_add/quest_add_page.dart';
import 'package:meokq_boss/presentation/views/quest/quest_detail/quest_detail_page.dart';
import 'package:meokq_boss/presentation/views/setting/setting_page.dart';
import 'package:meokq_boss/presentation/views/sign_in/agree/agree_page.dart';
import 'package:meokq_boss/presentation/views/sign_in/apply_store/apply_store_page.dart';
import 'package:meokq_boss/presentation/views/sign_in/apply_store/boss_information_apply/boss_information_apply_page.dart';
import 'package:meokq_boss/presentation/views/sign_in/apply_store/store_information_apply/store_information_apply_page.dart';
import 'package:meokq_boss/presentation/views/spalsh/splash_page.dart';

class RouteGenerator {
  Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case SplashPage.id:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<SplashBloc>(
            create: (context) => SplashBloc(),
            child: const SplashPage(),
          ),
        );
      case LoginPage.id:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<LoginBloc>(
            create: (context) => LoginBloc(),
            child: const LoginPage(),
          ),
        );
      case HomePage.id:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<BNCBloc>(
            create: (context) => BNCBloc(),
            child: const HomePage(),
          ),
        );
      case SettingPage.id:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<SettingBloc>(
            create: (context) => SettingBloc(),
            child: const SettingPage(),
          ),
        );
      case AgreePage.id:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<AgreementPermissionBloc>(
            create: (context) => AgreementPermissionBloc(),
            child: const AgreePage(),
          ),
        );
      case ApplyStorePage.id:
        return MaterialPageRoute(
          builder: (context) => const ApplyStorePage(),
        );
      case BossInformationApplyPage.id:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<BossInformationBloc>(
            create: (context) => BossInformationBloc(),
            child: const BossInformationApplyPage(),
          ),
        );
      case StoreInformationApplyPage.id:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<StoreInformationBloc>(
            create: (context) => StoreInformationBloc(),
            child: const StoreInformationApplyPage(),
          ),
        );
      case QuestAddPage.id:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<QuestAddBloc>(
            create: (context) => QuestAddBloc(),
            child: const QuestAddPage(),
          ),
        );
      case QuestDetailPage.id:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => BlocProvider<QuestDetailBloc>(
            create: (context) => QuestDetailBloc(),
            child: const QuestDetailPage(),
          ),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: const Center(
            child: Text('Error while loading new page'),
          ),
        );
      },
    );
  }
}
