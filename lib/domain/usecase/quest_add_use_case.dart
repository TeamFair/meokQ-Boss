// 📦 Package imports:
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:meokq_boss/core/config/local_key.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/data/model/mission/mission.dart';
import 'package:meokq_boss/data/model/reward/reward.dart';
import 'package:meokq_boss/domain/repository/api/interface_remote.dart';
import 'package:meokq_boss/domain/repository/local/inteface_local.dart';
import 'package:meokq_boss/domain/usecase/use_case.dart';

class QuestAddUseCase
    with RestErrorHandleMixin
    implements UseCase<QuestAddOutput, QuestAddInput> {
  final _remote = getIt<InterfaceRemote>();
  final _local = getIt<InterfaceLocal>();

  @override
  Future<Either<Failure, QuestAddOutput>> call(
    QuestAddInput input,
  ) async {
    try {
      final dto = {
        'marketId': _local.getKey(LocalStringKey.marketId),
        'missions': [
          {
            'content': input.missionType == MissionType.free
                ? input.missionItem
                : null,
            'target': input.missionType == MissionType.basic
                ? input.missionItem
                : null,
            'quantity': input.missionItemCount,
            'type': input.missionType.jsonText,
          },
        ],
        'rewards': [
          {
            'target': input.rewardItem,
            'quantity':
                input.rewardType == RewardType.giftCard ? input.reward : 0,
            'discountRate':
                input.rewardType == RewardType.discount ? input.reward : 0,
            'type': input.rewardType.jsonText,
          },
        ],
      };

      await _remote.postQuest(dto: dto);

      return Right(QuestAddOutput());
    } on DioException catch (e) {
      return Left(restErrorHandle(e));
    } catch (e) {
      return Left(QuestAddFailure());
    }
  }
}

class QuestAddInput {
  final String missionItem;
  final int missionItemCount;
  final String rewardItem;
  final int reward;
  final MissionType missionType;
  final RewardType rewardType;

  QuestAddInput({
    required this.missionItem,
    required this.missionItemCount,
    required this.rewardItem,
    required this.reward,
    required this.missionType,
    required this.rewardType,
  });
}

class QuestAddOutput {}

class QuestAddFailure implements Failure {
  /// 오류에 따라 오류 문구를 다르게 띄울 수 있습니다
  @override
  String get message => '오류가 떴습니다';

  /// 재시도 버튼을 눌러 다시 기능을 시도할 수 있도록 하고 싶다면 true로 설정해야 합니다.
  @override
  bool get isRetryable => false;
}
