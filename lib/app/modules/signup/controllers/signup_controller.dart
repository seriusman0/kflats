import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final emailC = TextEditingController(text: "testlogin@gmail.com");

  final passC =
      TextEditingController(text: "123123"); //TODO: Implement LoginController

  @override
  void onClose() {
    emailC.dispose();
    passC.dispose();
    super.onClose();
  }
}
