import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:first/app/modules/login/controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginView'),
        centerTitle: true,
      ),
      body: GetBuilder<LoginController>(
        init: LoginController(),
        initState: (_) {},
        builder: (_) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'hello ${controller.user?.value?.username}',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(hintText: 'username'),
                  onChanged: (value) => _.setUserName(value),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: 'password'),
                  onChanged: (value) => _.setPassword(value),
                ),
              ),
              RaisedButton(
                onPressed: () => _.postData(),
                child: Text(
                  'save',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
