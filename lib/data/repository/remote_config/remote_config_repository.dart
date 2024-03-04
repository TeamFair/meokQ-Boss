import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:injectable/injectable.dart';
import 'package:meokq_boss/data/model/app_version/app_version.dart';
import 'package:meokq_boss/domain/repository/remote_config/interface_remote_config.dart';

/// 리모트 컨피그 서비스
@Singleton(as: InterfaceRemoteConfig, env: ['prod'])
class RemoteConfigRepository extends InterfaceRemoteConfig {
  final FirebaseRemoteConfig _remoteConfig = FirebaseRemoteConfig.instance;

  @override
  Future<InterfaceRemoteConfig> init() async {
    await _remoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(minutes: 1),
        minimumFetchInterval: Duration.zero,
      ),
    );
    await _remoteConfig.fetchAndActivate();
    return this;
  }

  @override
  Future<AppVersion> getAppVersion() async {
    String requiredVersion = _remoteConfig.getString('minimumVersion');
    String latestVersion = _remoteConfig.getString('latestVersion');

    return AppVersion(
      requiredVersion: requiredVersion,
      latestVersion: latestVersion,
    );
  }
}
