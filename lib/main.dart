import 'package:flutter/material.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/core/theme/theme.dart';
import 'package:meokq_boss/presentation/views/spalsh/splash_page.dart';
import 'package:meokq_boss/routes/route_generator.dart';

void main() => launchApp();

Future<void> launchApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(env: 'prod');
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

  static void setLocale(BuildContext context, Locale newLocale) {
    var state = context.findAncestorStateOfType<_MyAppState>();
    state?.setLocale(newLocale);
  }
}

class _MyAppState extends State<MyApp> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  late Locale _locale;
  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() {
    setState(() {
      _locale = const Locale('ko');
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      onGenerateRoute: RouteGenerator().generateRoute,
      initialRoute: SplashPage.id,
      theme: AppTheme.buildTheme(),
      locale: _locale,
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocal in supportedLocales) {
          if (supportedLocal.languageCode == locale?.languageCode &&
              supportedLocal.countryCode == locale?.countryCode) {
            return supportedLocal;
          }
        }
        return supportedLocales.first;
      },
    );
  }
}
