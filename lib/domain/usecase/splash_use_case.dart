// 📦 Package imports:
import 'package:dartz/dartz.dart';
import 'package:meokq_boss/core/config/local_key.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/domain/repository/local/inteface_local.dart';
import 'package:meokq_boss/domain/usecase/use_case.dart';

class SplashUseCase implements UseCase<SplashOutput, SplashInput> {
  final _local = getIt<InterfaceLocal>();

  @override
  Future<Either<Failure, SplashOutput>> call(
    SplashInput input,
  ) async {
    try {
      final token = _local.getKey(LocalStringKey.token);
      final marketId = _local.getKey(LocalStringKey.marketId);

      if (token == null || marketId == null) return Right(SplashOutput(shouldLogin: true));

      return Right(SplashOutput(shouldLogin: false));
    } catch (e) {
      return Left(SplashFailure());
    }
  }
}

class SplashInput {}

class SplashOutput {
  final bool shouldLogin;

  SplashOutput({required this.shouldLogin});
}

class SplashFailure implements Failure {
  /// 오류에 따라 오류 문구를 다르게 띄울 수 있습니다
  @override
  String get message => '오류가 떴습니다';

  /// 재시도 버튼을 눌러 다시 기능을 시도할 수 있도록 하고 싶다면 true로 설정해야 합니다.
  @override
  bool get isRetryable => false;
}
