import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:social_media_get/common/constant/color_res.dart';
import 'package:social_media_get/common/constant/image_res.dart';
import 'package:social_media_get/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      autoRemove: true,
      global: true,
      init: SplashController(),
      initState: (state) {
        Future.delayed(
          const Duration(microseconds: 200),
          () {
            final splashController = Get.find<SplashController>();
            splashController.nextScreen();
          },
        );
      },
      builder: (SplashController controller) {
        SystemChrome.setSystemUIOverlayStyle(
          const SystemUiOverlayStyle(
              statusBarColor: ColorResource.white,
              statusBarIconBrightness: Brightness.dark,
              systemNavigationBarColor: Colors.black),
        );
        return Scaffold(
          body: SafeArea(
            child: Center(
            child: SizedBox(
            height: 200,
            child: Lottie.asset(ImageResource.lottieSplash),
        ),
        ),
        ));
      },
    );
  }
}
