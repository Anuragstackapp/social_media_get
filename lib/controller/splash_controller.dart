import 'dart:async';
import 'package:get/get.dart';
import 'package:social_media_get/screen/welcome_page/welcome_page.dart';

class SplashController extends GetxController {
  void nextScreen() {
    Timer(const Duration(seconds: 4), () {
      Get.to(const WelcomePage());
    });
  }
}
