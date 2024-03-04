import 'package:meokq_boss/data/model/app_version/app_version.dart';

abstract class InterfaceRemoteConfig {
  Future<InterfaceRemoteConfig> init();

  Future<AppVersion> getAppVersion();
}
