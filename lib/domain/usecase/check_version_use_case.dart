// 📦 Package imports:
import 'package:dartz/dartz.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:meokq_boss/domain/usecase/use_case.dart';

class CheckVersionUseCase
    implements
        UseCase<CheckVersionOutput,
            CheckVersionInput> {
  @override
  Future<Either<Failure, CheckVersionOutput>> call(
    CheckVersionInput input,
  ) async {
    try {
      final FirebaseRemoteConfig _remoteConfig = FirebaseRemoteConfig.instance;

      return Right(CheckVersionOutput());
    } catch (e) {
      return Left(CheckVersionFailure());
    }
  }
}

class CheckVersionInput {}

class CheckVersionOutput {}

class CheckVersionFailure implements Failure {
  /// 오류에 따라 오류 문구를 다르게 띄울 수 있습니다
  @override
  String get message => '오류가 떴습니다';
  
  /// 재시도 버튼을 눌러 다시 기능을 시도할 수 있도록 하고 싶다면 true로 설정해야 합니다.
  @override
  bool get isRetryable => false;
}