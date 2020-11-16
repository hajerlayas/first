import 'package:first/app/modules/uploadImage/controllers/upload_image_controller.dart';
import 'package:get/get.dart';

class UploadImageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UploadImageController>(
      () => UploadImageController(),
    );
  }
}
