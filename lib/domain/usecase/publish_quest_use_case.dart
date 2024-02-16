// 📦 Package imports:
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:meokq_boss/core/config/local_key.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/data/dto/publish_quest/publish_quest_dto.dart';
import 'package:meokq_boss/domain/repository/api/interface_remote.dart';
import 'package:meokq_boss/domain/repository/local/inteface_local.dart';
import 'package:meokq_boss/domain/usecase/use_case.dart';

class PublishQuestUseCase with RestErrorHandleMixin
    implements UseCase<PublishQuestOutput, PublishQuestInput> {
  final _remote = getIt<InterfaceRemote>();
  final _local = getIt<InterfaceLocal>();

  @override
  Future<Either<Failure, PublishQuestOutput>> call(
    PublishQuestInput input,
  ) async {
    try {
      assert(_local.getKey(LocalStringKey.marketId) != null, 'marketId가 없습니다');

      await _remote.publishQuest(
        publishQuestDTO: PublishQuestDTO(
          marketId: _local.getKey(LocalStringKey.marketId)!,
          questId: input.questId,
          ticketCount: input.ticketCount,
        ),
      );

      return Right(PublishQuestOutput());
    } on DioException catch (e) {
      return Left(restErrorHandle(e));
    } catch (e) {
      return Left(PublishQuestFailure());
    }
  }
}

class PublishQuestInput {
  final String questId;
  final int ticketCount;

  PublishQuestInput({required this.questId, required this.ticketCount});
}

class PublishQuestOutput {}

class PublishQuestFailure implements Failure {
  /// 오류에 따라 오류 문구를 다르게 띄울 수 있습니다
  @override
  String get message => '오류가 떴습니다';

  /// 재시도 버튼을 눌러 다시 기능을 시도할 수 있도록 하고 싶다면 true로 설정해야 합니다.
  @override
  bool get isRetryable => false;
}
