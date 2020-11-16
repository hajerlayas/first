import 'dart:convert';

import 'package:first/app/provider/Api.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final user = Api().obs;
  String _userName, _password;

  getData() async {
    var url = 'http://192.168.1.116:5000';
    var response = await http.get(url);
    var responseBody = json.decode(response.body);
    user(Api.fromJson(responseBody));
    update();
    print(user.value.stuff.first.date);
  }

  setUserName(value) {
    _userName = value;
  }

  setPassword(value) {
    _password = value;
  }

  postData() async {
    Api newUser = Api(username: _userName, password: _password);
    var url = 'http://192.168.1.116:5000/post';
    var bdy = json.encode(newUser.toJson());
    var sendData = await http.post(url, body: bdy);
    var responseBody = json.decode(sendData.body);
    user(Api.fromJson(responseBody));
    update();
    print(sendData.body);
  }

  @override
  void onInit() {
    getData();
  }

  @override
  void onReady() {}

  @override
  void onClose() {}
}
