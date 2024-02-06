// 📦 Package imports:
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:meokq_boss/core/config/enum.dart';
import 'package:meokq_boss/core/config/local_key.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/domain/repository/api/interface_remote.dart';
import 'package:meokq_boss/domain/repository/local/inteface_local.dart';
import 'package:meokq_boss/domain/usecase/use_case.dart';

class BossApplyUseCase
    with RestErrorHandleMixin
    implements UseCase<BossApplyOutput, BossApplyInput> {
  final _remote = getIt<InterfaceRemote>();
  final _local = getIt<InterfaceLocal>();

  @override
  Future<Either<Failure, BossApplyOutput>> call(
    BossApplyInput input,
  ) async {
    final idcardImageId = await _remote.postImage(
      type: ImageType.idCard.text,
      file: input.identificationUrl,
    );

    final licenseImageId = await _remote.postImage(
      type: ImageType.businessCertificate.text,
      file: input.identificationUrl,
    );

    // final birthDate = DateTime.parse(input.birth).toIso8601String();

    try {
      final dto = {
        'marketId': _local.getKey(LocalKey.marketId),
        'owner': {
          'name': input.userName,
          'birthdate': input.birth,
          'idcardImageId': idcardImageId.imageId,
        },
        'license': {
          'licenseId': input.businessNumber,
          'licenseImageId': licenseImageId.imageId,
          'ownerName': input.bossName,
          'marketName': input.storeName,
          'address': input.address,
          'postalCode': input.postalCode,
        },
      };

      await _remote.postAuth(applyAuthDTO: dto);

      return Right(BossApplyOutput());
    } on DioException catch (e) {
      return Left(restErrorHandle(e));
    } catch (e) {
      return Left(BossApplyFailure());
    }
  }
}

class BossApplyInput {
  final String businessNumber;
  final String businessType;
  final String bossName;
  final String storeName;
  final String address;
  final String postalCode;
  final String birth;
  final String businessCertificationUrl;
  final String identificationUrl;
  final String userName;

  BossApplyInput({
    required this.businessNumber,
    required this.businessType,
    required this.bossName,
    required this.storeName,
    required this.address,
    required this.postalCode,
    required this.birth,
    required this.businessCertificationUrl,
    required this.identificationUrl,
    required this.userName,
  });
}

class BossApplyOutput {}

class BossApplyFailure implements Failure {
  /// 오류에 따라 오류 문구를 다르게 띄울 수 있습니다
  @override
  String get message => '오류가 떴습니다';

  /// 재시도 버튼을 눌러 다시 기능을 시도할 수 있도록 하고 싶다면 true로 설정해야 합니다.
  @override
  bool get isRetryable => false;
}
