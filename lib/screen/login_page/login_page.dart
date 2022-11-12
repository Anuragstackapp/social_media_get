import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_get/controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      global: true,
      autoRemove: true,
      init: LoginController(),
      initState: (state) {
        Future.delayed(
          const Duration(milliseconds: 200),
          () {
            final loginController = Get.find<LoginController>();
          },
        );
      },
      builder: (controller) {
        return const Scaffold();
      },
    );
  }
}
