import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:meokq_boss/core/injector/injector.config.dart';
import 'package:meokq_boss/domain/repository/local/inteface_local.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true, // default
  asExtension: false, // default
)

/// 어플리케이션 의존성을 설정합니다
/// env: production, unit-test, widget-test, integration-test
/// environmentFilter:
Future<void> configureDependencies({
  String? env,
  EnvironmentFilter? environmentFilter,
}) async {
  init(
    getIt,
    environment: env,
    environmentFilter: environmentFilter,
  );

  getIt<InterfaceLocal>().init();
}
