// 📦 Package imports:
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:meokq_boss/core/config/local_key.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/domain/repository/api/interface_remote.dart';
import 'package:meokq_boss/domain/repository/local/inteface_local.dart';
import 'package:meokq_boss/domain/usecase/use_case.dart';

class PostChallengeUseCase
    with RestErrorHandleMixin
    implements UseCase<PostChallengeOutput, PostChallengeInput> {
  final _local = getIt<InterfaceLocal>();
  final _remote = getIt<InterfaceRemote>();

  @override
  Future<Either<Failure, PostChallengeOutput>> call(
    PostChallengeInput input,
  ) async {
    try {
      assert(_local.getKey(LocalStringKey.marketId) != null, 'marketId가 없습니다');

      final dto = {
        'challengeId': input.challengeId,
        'result': input.result,
        'comment': input.comment,
        'marketId': _local.getKey(LocalStringKey.marketId)!,
      };

      await _remote.postChallenge(challengeDTO: dto);

      return Right(PostChallengeOutput());
    } on DioException catch (e) {
      return Left(restErrorHandle(e));
    } catch (e) {
      return Left(PostChallengeFailure());
    }
  }
}

class PostChallengeInput {
  final String challengeId;
  final String result;
  final String? comment;

  PostChallengeInput({
    required this.challengeId,
    required this.result,
    required this.comment,
  });
}

class PostChallengeOutput {}

class PostChallengeFailure implements Failure {
  /// 오류에 따라 오류 문구를 다르게 띄울 수 있습니다
  @override
  String get message => '오류가 떴습니다';

  /// 재시도 버튼을 눌러 다시 기능을 시도할 수 있도록 하고 싶다면 true로 설정해야 합니다.
  @override
  bool get isRetryable => false;
}
