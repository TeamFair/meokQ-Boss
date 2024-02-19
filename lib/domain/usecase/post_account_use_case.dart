// 📦 Package imports:
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:meokq_boss/core/config/local_key.dart';
import 'package:meokq_boss/core/injector/injector.dart';
import 'package:meokq_boss/core/util/time_util.dart';
import 'package:meokq_boss/domain/repository/api/interface_remote.dart';
import 'package:meokq_boss/domain/repository/image_picker/interface_image_picker.dart';
import 'package:meokq_boss/domain/repository/local/inteface_local.dart';
import 'package:meokq_boss/domain/usecase/use_case.dart';

class PostAccountUseCase
    with RestErrorHandleMixin
    implements UseCase<PostAccountOutput, PostAccountInput> {
  final _remote = getIt<InterfaceRemote>();
  final _local = getIt<InterfaceLocal>();

  @override
  Future<Either<Failure, PostAccountOutput>> call(
    PostAccountInput input,
  ) async {
    try {
      assert(
        _local.getKey(LocalStringKey.marketId) != null,
        '마켓 id가 없습니다',
      );

      List<Map<String, dynamic>> marketList = [];

      // businessDays가 없으면 open, close도 없습니다
      for (String day in input.businessDays ?? []) {
        marketList.add({
          'weekDay': toEnglishDay(day),
          'openTime': korToDate(input.open ?? ''),
          'closeTime': korToDate(input.close ?? ''),
          'holidayYn': 'Y',
        });
      }

      String? logoImageId;

      if (input.logoImageUrl != null) {
        final imageVO = await _remote.postImage(
          type: ImageType.marketLogo.text,
          file: input.logoImageUrl!,
        );

        logoImageId = imageVO.imageId;
      }
      
      // input으로 들어온 값들로만 dto 생성
      final dto = {
        'logoImageId': logoImageId,
        'phone': input.phone,
        'address': input.address,
        'marketTime': marketList,
      };

      return Right(PostAccountOutput());
    } on DioException catch (e) {
      return Left(restErrorHandle(e));
    } catch (e) {
      return Left(PostAccountFailure());
    }
  }
}

class PostAccountInput {
  final String? open;
  final String? close;
  final List<String>? businessDays;
  final String? phone;
  final String? address;
  final String? logoImageUrl;

  PostAccountInput({
    this.open,
    this.close,
    this.businessDays,
    this.phone,
    this.address,
    this.logoImageUrl,
  });
}

class PostAccountOutput {}

class PostAccountFailure implements Failure {
  /// 오류에 따라 오류 문구를 다르게 띄울 수 있습니다
  @override
  String get message => '오류가 떴습니다';

  /// 재시도 버튼을 눌러 다시 기능을 시도할 수 있도록 하고 싶다면 true로 설정해야 합니다.
  @override
  bool get isRetryable => false;
}
