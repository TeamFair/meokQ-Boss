// 📦 Package imports:
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/data/vo/challenge/challenge_vo.dart';
import 'package:meokq_boss/domain/repository/api/interface_remote.dart';
import 'package:meokq_boss/domain/usecase/use_case.dart';

class GetChallengeUseCase with RestErrorHandleMixin
    implements UseCase<GetChallengeOutput, GetChallengeInput> {
  final _remote = getIt<InterfaceRemote>();

  @override
  Future<Either<Failure, GetChallengeOutput>> call(
    GetChallengeInput input,
  ) async {
    try {
      final challengeList = await _remote.getChallenges();

      return Right(GetChallengeOutput(challengeList: challengeList));
    } on DioException catch (e) {
      return Left(restErrorHandle(e));
    }  catch (e) {
      return Left(GetChallengeFailure());
    }
  }
}

class GetChallengeInput {}

class GetChallengeOutput {
  final List<ChallengeVO> challengeList;

  GetChallengeOutput({required this.challengeList});
}

class GetChallengeFailure implements Failure {
  @override
  String get message => '도전 내역을 가져오지 못했습니다';

  /// 재시도 버튼을 눌러 다시 기능을 시도할 수 있도록 하고 싶다면 true로 설정해야 합니다.
  @override
  bool get isRetryable => false;
}
