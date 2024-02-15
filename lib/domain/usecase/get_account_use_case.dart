// 📦 Package imports:
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:meokq_boss/core/config/local_key.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/core/util/time_util.dart';
import 'package:meokq_boss/data/model/my_information/my_information.dart';
import 'package:meokq_boss/domain/repository/api/interface_remote.dart';
import 'package:meokq_boss/domain/repository/local/inteface_local.dart';
import 'package:meokq_boss/domain/usecase/use_case.dart';

class GetAccountUseCase
    with RestErrorHandleMixin
    implements UseCase<GetAccountOutput, GetAccountInput> {
  final _remote = getIt<InterfaceRemote>();
  final local = getIt<InterfaceLocal>();

  @override
  Future<Either<Failure, GetAccountOutput>> call(
    GetAccountInput input,
  ) async {
    try {
      assert(
        local.getKey(LocalStringKey.marketId) != null,
        '마켓 id가 없습니다',
      );

      final marketInfo = await _remote.getDetailMarket();
      final questList = await _remote.getQuests(
        marketId: local.getKey(LocalStringKey.marketId)!,
      );
      final imageUrl = await _remote.getImage(imageId: marketInfo.logoImageId);

      final businessDays = marketInfo.marketTimes.map((element) {
        return toKoreanDay(element.weekDay);
      }).toList();

      final sortedDays = ['월', '화', '수', '목', '금', '토', '일'];

      for (var s in sortedDays) {
        if (!businessDays.contains(s)) {
          sortedDays.remove(s);
        }
      }

      final myInformation = MyInformation(
        logoUrl: imageUrl,
        questCount: questList.length,
        ticketCount: marketInfo.ticketCount,
        address: marketInfo.address,
        businessDays: sortedDays,
        open: marketInfo.marketTimes.first.openTime,
        close: marketInfo.marketTimes.first.openTime,
        phone: marketInfo.phone,
      );

      return Right(
        GetAccountOutput(
          myInformation: myInformation,
        ),
      );
    } on DioException catch (e) {
      return Left(restErrorHandle(e));
    } catch (e) {
      return Left(GetAccountFailure());
    }
  }
}

class GetAccountInput {}

class GetAccountOutput {
  final MyInformation myInformation;

  GetAccountOutput({required this.myInformation});
}

class GetAccountFailure implements Failure {
  /// 오류에 따라 오류 문구를 다르게 띄울 수 있습니다
  @override
  String get message => '오류가 떴습니다';

  /// 재시도 버튼을 눌러 다시 기능을 시도할 수 있도록 하고 싶다면 true로 설정해야 합니다.
  @override
  bool get isRetryable => false;
}
