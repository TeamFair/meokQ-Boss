import 'package:image_picker/image_picker.dart';

abstract class InterfaceImagePicker {
  final imagePicker = ImagePicker();

  Future<String> getImageFromGallery();

  Future<String> getImageFromCamera();
}

enum ImageType {
  business,
  idCard,
  marketLogo,
  receipt;

  String get text {
    return switch (this) {
      ImageType.business => 'BUSINESS_REGISTERATION_CERTIFICATE',
      ImageType.idCard => 'ID_CARD',
      ImageType.marketLogo => 'MARKETLOGO',
      ImageType.receipt => 'RECEIPT',
    };
  }
}
