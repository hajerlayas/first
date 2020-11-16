import 'dart:convert';

import 'package:first/app/modules/login/views/login_view.dart';
import 'package:first/app/provider/Api.dart';
import 'package:http/http.dart' as http;
import 'package:first/app/routes/app_pages.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  goToSecond() {
    Get.toNamed(Routes.LOGIN);
  }

  final count = 0.obs;

  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {}

  void increment() => count.value++;

  uploadImage() {
    Get.toNamed(Routes.UPLOAD_IMAGE);
  }
}
