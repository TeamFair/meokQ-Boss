// 📦 Package imports:
import 'package:dartz/dartz.dart';
import 'package:meokq_boss/core/config/const.dart';
import 'package:meokq_boss/core/config/local_key.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/domain/repository/api/interface_remote.dart';
import 'package:meokq_boss/domain/repository/local/inteface_local.dart';
import 'package:meokq_boss/domain/usecase/use_case.dart';
import 'package:meokq_boss/presentation/bloc/splash/splash_bloc.dart';

class SplashUseCase implements UseCase<SplashOutput, SplashInput> {
  final _remote = getIt<InterfaceRemote>();
  final _local = getIt<InterfaceLocal>();

  @override
  Future<Either<Failure, SplashOutput>> call(
    SplashInput input,
  ) async {
    try {
      final token = _local.getKey(LocalStringKey.token);
      final marketId = _local.getKey(LocalStringKey.marketId);

      if (token == null || marketId == null) {
        return Right(SplashOutput(splashStatus: SplashStatus.needLogin));
      }

      final checkMarketVO = await _remote.marketApproved();

      if (checkMarketVO.isEmpty) {
        return Right(
        SplashOutput(
          splashStatus: SplashStatus.register,
        ),
      );
      }

      _local.setKey(LocalStringKey.marketStatus, checkMarketVO[0].reviewResult);

      return Right(
        SplashOutput(
          splashStatus: strToSplashStatus(checkMarketVO[0].reviewResult),
          // splashStatus: SplashStatus.register,
          comment: checkMarketVO[0].comment,
        ),
      );
    } catch (e) {
      return Left(SplashFailure());
    }
  }
}

class SplashInput {}

class SplashOutput {
  final SplashStatus splashStatus;
  final String? comment;

  SplashOutput({
    required this.splashStatus,
    this.comment,
  });
}

class SplashFailure implements Failure {
  /// 오류에 따라 오류 문구를 다르게 띄울 수 있습니다
  @override
  String get message => '오류가 떴습니다';

  /// 재시도 버튼을 눌러 다시 기능을 시도할 수 있도록 하고 싶다면 true로 설정해야 합니다.
  @override
  bool get isRetryable => false;
}
