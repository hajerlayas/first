import 'dart:convert';

import 'package:first/app/modules/uploadImage/controllers/upload_image_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class UploadImageView extends GetView<UploadImageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UploadImageView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
              child: RaisedButton(
            onPressed: () => controller.selectImage(),
            child: Text('select an image'),
          )),
          SizedBox(
            height: 100.0,
            width: 100.0,
            child: GetBuilder<UploadImageController>(
              init: UploadImageController(),
              initState: (_) {},
              builder: (_) {
                if (_.count.value.isNotEmpty) {
                  return Image.memory(base64Decode(_.count.value));
                } else {
                  return Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/220px-Image_created_with_a_mobile_phone.png');
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
