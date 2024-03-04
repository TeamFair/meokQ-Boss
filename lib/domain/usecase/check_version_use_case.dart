// 📦 Package imports:
import 'package:dartz/dartz.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/domain/repository/remote_config/interface_remote_config.dart';
import 'package:meokq_boss/domain/usecase/use_case.dart';
import 'package:meokq_boss/presentation/bloc/splash/splash_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:version/version.dart';

class CheckVersionUseCase
    implements UseCase<CheckVersionOutput, CheckVersionInput> {
  final remoteConfig = getIt<InterfaceRemoteConfig>();

  @override
  Future<Either<Failure, CheckVersionOutput>> call(
    CheckVersionInput input,
  ) async {
    try {
      PackageInfo packageInfo = await PackageInfo.fromPlatform();

      final appVersion = await remoteConfig.getAppVersion();

      final Version currentVersion = Version.parse(packageInfo.version);
      final Version minVersion = Version.parse(appVersion.requiredVersion);
      final Version latestVersion = Version.parse(appVersion.latestVersion);

      AppUpdateStatus appUpdateStatus;

      if (currentVersion < minVersion) {
        // 강업 진행
        appUpdateStatus = AppUpdateStatus.updateNeeded;
      } else if (currentVersion >= minVersion &&
          currentVersion < latestVersion) {
        // 업데이트 권고
        appUpdateStatus = AppUpdateStatus.updateRecommended;
      } else if (currentVersion == latestVersion) {
        appUpdateStatus = AppUpdateStatus.updated;
      } else {
        // 해당 경우는 currentAppVer > latestVer일 경우임
        appUpdateStatus = AppUpdateStatus.overUpdated;
      }

      return Right(
        CheckVersionOutput(
          appUpdateStatus: appUpdateStatus,
        ),
      );
    } catch (e) {
      return Left(CheckVersionFailure());
    }
  }
}

class CheckVersionInput {}

class CheckVersionOutput {
  final AppUpdateStatus appUpdateStatus;

  CheckVersionOutput({required this.appUpdateStatus});
}

class CheckVersionFailure implements Failure {
  /// 오류에 따라 오류 문구를 다르게 띄울 수 있습니다
  @override
  String get message => '오류가 떴습니다';

  /// 재시도 버튼을 눌러 다시 기능을 시도할 수 있도록 하고 싶다면 true로 설정해야 합니다.
  @override
  bool get isRetryable => false;
}
