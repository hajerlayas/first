import 'package:flutter_uploader/flutter_uploader.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:async/async.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'dart:convert';

import 'package:get/get.dart';

class UploadImageController extends GetxController {
  //TODO: Implement UploadImageController

  final count = ''.obs;
  final picker = ImagePicker();
  var _image;

  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {}

  selectImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      _image = pickedFile.path;
      sendImage(_image);
    } else {
      Get.snackbar('error', 'please select an image');
    }
  }

  Future<void> sendImage(var image) async {
    String url = 'https://httpbin.org/post';

    final uploader = FlutterUploader();

    final String filename = basename(image);
    final String savedDir = dirname(image);

    await uploader.enqueue(
        url: url,
        files: [
          FileItem(filename: filename, savedDir: savedDir, fieldname: "file")
        ],
        method: UploadMethod.POST,
        //headers: {"apikey": "api_123456", "userkey": "userkey_123456"}
        // data: {"name": "john"},
        showNotification:
            false, // send local notification (android only) for upload status
        tag: "upload 1"); // unique tag for upload task

    print('mmmmmmmmmmmmmmmmm');
    uploader.result.listen((result) {
      //... code to handle result
      print(' ffffffffffffffff ${result.statusCode}');

      if (result.statusCode == 200) {
        count.value = result.response;
        update();
        print('hhhhhhhhhhhhhhhhhhhhhhhh');
        print(result.response);
      }
    }, onError: (ex, stacktrace) {
      // ... code to handle error
    });

    print('nnnnnnnnnnnnnnnnn');
  }
}
