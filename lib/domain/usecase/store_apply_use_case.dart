// 📦 Package imports:
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:meokq_boss/core/config/enum.dart';
import 'package:meokq_boss/core/config/local_key.dart';
import 'package:meokq_boss/core/injector/injector.dart';
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
      final openTimePlus = input.open.contains('오후');
      final openTime = input.open.split(' ')[1];

      var openHour = int.parse(openTime.split(':')[0]);
      var openMinute = openTime.split(':')[1];
      if (openTimePlus) {
        openHour += 12;
      }

      final open = '${openHour == 9 ? '09' : openHour}:$openMinute';

      final closeTimePlus = input.close.contains('오후');
      final closeTime = input.close.split(' ')[1];

      var closeHour = int.parse(closeTime.split(':')[0]);
      var closeMinute = closeTime.split(':')[1];
      if (closeTimePlus) {
        closeHour += 12;
      }

      final close = '${closeHour == 9 ? '09' : closeHour}:$closeMinute';

      List<Map<String, dynamic>> marketList = [];

      for (String day in input.businessDays) {
        marketList.add({
          'weekDay': formatDay(day),
          'openTime': open,
          'closeTime': close,
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

  String formatDay(String day) => switch (day) {
        '월' => 'MON',
        '화' => 'TUE',
        '수' => 'WED',
        '목' => 'THU',
        '금' => 'FRI',
        '토' => 'SAT',
        '일' => 'SUN',
        _ => ''
      };
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
