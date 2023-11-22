import 'package:image_picker/image_picker.dart';

abstract class InterfaceImagePicker {
  final imagePicker = ImagePicker();

  Future<String> getImageFromGallery();

  Future<String> getImageFromCamera();
}
