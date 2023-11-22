// import 'package:dartz/dartz.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:meokq_boss/domain/usecase/use_case.dart';

// class ImagePickerUseCase
//     implements UseCase<ImagePickerOutput, ImagePickerInput> {
//   @override
//   Future<Either<Failure, ImagePickerOutput>> call(
//     ImagePickerInput input,
//   ) async {
//     try {
      

//       return Right(ImagePickerOutput());
//     } catch (e) {
//       return Left(ImagePickerFailure());
//     }
//   }
// }

// class ImagePickerInput {}

// class ImagePickerOutput {}

// class ImagePickerFailure implements Failure {
//   /// 오류에 따라 오류 문구를 다르게 띄울 수 있습니다
//   @override
//   String get message => '오류가 떴습니다';

//   /// 재시도 버튼을 눌러 다시 기능을 시도할 수 있도록 하고 싶다면 true로 설정해야 합니다.
//   @override
//   bool get isRetryable => false;
// }
