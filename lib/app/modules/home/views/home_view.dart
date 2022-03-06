import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kflats/app/controllers/auth_controller.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () => authC.logout(), icon: Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Text(
          'Ini adalah halaman Utama',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
