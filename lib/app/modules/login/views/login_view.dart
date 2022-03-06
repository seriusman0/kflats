import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kflats/app/controllers/auth_controller.dart';
import 'package:kflats/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final authC = Get.find<AuthController>();

  var child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('LoginView'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              TextField(
                controller: controller.emailC,
                decoration: InputDecoration(labelText: "Email"),
              ),
              TextField(
                controller: controller.passC,
                decoration: InputDecoration(labelText: "Password"),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () => authC.login(
                      controller.emailC.text, controller.passC.text),
                  child: Text("LOGIN")),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Belum Punya akun ?"),
                  TextButton(
                      onPressed: () => Get.toNamed(Routes.SIGNUP),
                      child: Text("Daftar"))
                ],
              )
            ],
          ),
        ));
  }
}
