import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:meokq_boss/domain/repository/image_picker/interface_image_picker.dart';

@Singleton(as: InterfaceImagePicker, env: ['prod'])
class ImagePickerRepository extends InterfaceImagePicker {
  @override
  Future<String> getImageFromCamera() async {
    final XFile? image =
        await imagePicker.pickImage(source: ImageSource.camera);

    return image?.path ?? '';
  }

  @override
  Future<String> getImageFromGallery() async {
    final XFile? image =
        await imagePicker.pickImage(source: ImageSource.gallery);

    return image?.path ?? '';
  }
}
