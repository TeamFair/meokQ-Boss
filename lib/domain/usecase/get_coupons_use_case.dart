// 📦 Package imports:
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/data/model/coupon/coupon.dart';
import 'package:meokq_boss/domain/repository/api/interface_remote.dart';
import 'package:meokq_boss/domain/usecase/use_case.dart';

class GetCouponsUseCase
    with RestErrorHandleMixin
    implements UseCase<GetCouponsOutput, GetCouponsInput> {
  final _remote = getIt<InterfaceRemote>();

  @override
  Future<Either<Failure, GetCouponsOutput>> call(
    GetCouponsInput input,
  ) async {
    try {
      final couponList = await _remote.getCoupons(status: input.couponStatus.jsonText);

      return Right(GetCouponsOutput(couponList: couponList));
    } on DioException catch (e) {
      return Left(restErrorHandle(e));
    } catch (e) {
      return Left(GetCouponsFailure());
    }
  }
}

class GetCouponsInput {
  final CouponStatus couponStatus;

  GetCouponsInput({required this.couponStatus});
}

class GetCouponsOutput {
  final List<Coupon> couponList;

  GetCouponsOutput({required this.couponList});
}

class GetCouponsFailure implements Failure {
  /// 오류에 따라 오류 문구를 다르게 띄울 수 있습니다
  @override
  String get message => '오류가 떴습니다';

  /// 재시도 버튼을 눌러 다시 기능을 시도할 수 있도록 하고 싶다면 true로 설정해야 합니다.
  @override
  bool get isRetryable => false;
}
