import 'package:first/app/modules/login/views/login_view.dart';
import 'package:first/app/modules/login/bindings/login_binding.dart';
import 'package:first/app/modules/home/views/home_view.dart';
import 'package:first/app/modules/home/bindings/home_binding.dart';
import 'package:first/app/modules/uploadImage/bindings/upload_image_binding.dart';
import 'package:first/app/modules/uploadImage/views/upload_image_view.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.UPLOAD_IMAGE,
      page: () => UploadImageView(),
      binding: UploadImageBinding(),
    ),
  ];
}
