import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meokq_boss/presentation/bloc/bottom_navigation_controller/bnc_bloc.dart';
import 'package:meokq_boss/presentation/bloc/login/login_bloc.dart';
import 'package:meokq_boss/presentation/bloc/splash/splash_bloc.dart';
import 'package:meokq_boss/presentation/views/home/home_page.dart';
import 'package:meokq_boss/presentation/views/login/login_page.dart';
import 'package:meokq_boss/presentation/views/setting/setting_page.dart';
import 'package:meokq_boss/presentation/views/spalsh/splash_page.dart';

class RouteGenerator {
  Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case SplashPage.id:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<SplashBloc>.value(
            value: SplashBloc(),
            child: const SplashPage(),
          ),
        );
      case LoginPage.id:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<LoginBloc>.value(
            value: LoginBloc(),
            child: const LoginPage(),
          ),
        );
      case HomePage.id:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<BNCBloc>.value(
            value: BNCBloc(),
            child: const HomePage(),
          ),
        );
      case SettingPage.id:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<BNCBloc>.value(
            value: BNCBloc(),
            child: const SettingPage(),
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
