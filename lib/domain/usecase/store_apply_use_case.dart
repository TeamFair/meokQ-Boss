// 📦 Package imports:
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:meokq_boss/core/config/enum.dart';
import 'package:meokq_boss/core/config/local_key.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/core/util/time_util.dart';
import 'package:meokq_boss/domain/repository/api/interface_remote.dart';
import 'package:meokq_boss/domain/repository/local/inteface_local.dart';
import 'package:meokq_boss/domain/usecase/use_case.dart';

class StoreApplyUseCase
    with RestErrorHandleMixin
    implements UseCase<StoreApplyOutput, StoreApplyInput> {
  final _remote = getIt<InterfaceRemote>();
  final _local = getIt<InterfaceLocal>();

  @override
  Future<Either<Failure, StoreApplyOutput>> call(
    StoreApplyInput input,
  ) async {
    try {
      List<Map<String, dynamic>> marketList = [];

      for (String day in input.businessDays) {
        marketList.add({
          'weekDay': toEnglishDay(day),
          'openTime': korToDate(input.open),
          'closeTime': korToDate(input.close),
          'holidayYn': 'Y',
        });
      }

      final logoImageId = await _remote.postImage(
        type: ImageType.marketLogo.text,
        file: input.logoImageUrl,
      );

      final dto = {
        'logoImageId': logoImageId.imageId,
        'name': input.storeName,
        'phone': input.phone,
        'district': '',
        'address': input.address,
        'marketTime': marketList,
      };

      final res = await _remote.applyMarkets(applyMarketDTO: dto);

      _local.setKey(
        LocalStringKey.marketId,
        res.marketId,
      );

      return Right(StoreApplyOutput());
    } on DioException catch (e) {
      return Left(restErrorHandle(e));
    } catch (e) {
      return Left(StoreApplyFailure());
    }
  }
}

class StoreApplyInput {
  final String open;
  final String close;
  final List<String> businessDays;
  final String storeName;
  final String phone;
  final String address;
  final String logoImageUrl;

  StoreApplyInput({
    required this.open,
    required this.close,
    required this.businessDays,
    required this.storeName,
    required this.phone,
    required this.address,
    required this.logoImageUrl,
  });
}

class StoreApplyOutput {}

class StoreApplyFailure implements Failure {
  /// 오류에 따라 오류 문구를 다르게 띄울 수 있습니다
  @override
  String get message => '오류가 떴습니다';

  /// 재시도 버튼을 눌러 다시 기능을 시도할 수 있도록 하고 싶다면 true로 설정해야 합니다.
  @override
  bool get isRetryable => false;
}
