// 📦 Package imports:
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:meokq_boss/core/config/local_key.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/data/vo/quest/get_quest_vo.dart';
import 'package:meokq_boss/domain/repository/api/interface_remote.dart';
import 'package:meokq_boss/domain/repository/local/inteface_local.dart';
import 'package:meokq_boss/domain/usecase/use_case.dart';

class GetQuestsUseCase with RestErrorHandleMixin implements UseCase<GetQuestsOutput, GetQuestsInput> {
  final _remote = getIt<InterfaceRemote>();
  final _local = getIt<InterfaceLocal>();

  @override
  Future<Either<Failure, GetQuestsOutput>> call(
    GetQuestsInput input,
  ) async {
    try {
      assert(_local.getKey(LocalStringKey.marketId) != null, '마켓 id가 없습니다');

      final marketId = _local.getKey(LocalStringKey.marketId)!;
      final questList = await _remote.getQuests(marketId: marketId);
      return Right(GetQuestsOutput(questList: questList));
    } on DioException catch (e) {
      return Left(restErrorHandle(e));
    } catch (e) {
      return Left(GetQuestsFailure());
    }
  }
}

class GetQuestsInput {}

class GetQuestsOutput {
  final List<QuestListVO> questList;

  GetQuestsOutput({required this.questList});
}

class GetQuestsFailure implements Failure {
  /// 오류에 따라 오류 문구를 다르게 띄울 수 있습니다
  @override
  String get message => '오류가 떴습니다';

  /// 재시도 버튼을 눌러 다시 기능을 시도할 수 있도록 하고 싶다면 true로 설정해야 합니다.
  @override
  bool get isRetryable => false;
}
