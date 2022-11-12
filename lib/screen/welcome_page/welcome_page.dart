import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:social_media_get/common/constant/color_res.dart';
import 'package:social_media_get/common/constant/image_res.dart';
import 'package:social_media_get/common/constant/string_res.dart';
import 'package:social_media_get/common/widget/common_text.dart';
import 'package:social_media_get/common/widget/elevated_button.dart';
import 'package:social_media_get/generated/l10n.dart';
import 'package:social_media_get/screen/login_page/login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Center(
                    child: Lottie.asset(ImageResource.lottieSplash,height: 150)
                ),
              ),
              Center(
                child: CommonText(
                  fontFamily: StringResource.fontFamily,
                  text: S.of(context).loginTitle,
                  color: ColorResource.blueAccent,
                  fontWeight: FontWeight.w500,
                  fontSize: 27,
                ),
              ),
              const SizedBox(height: 15),
              Center(
                child: CommonText(
                  text: S.of(context).loginTitle1,
                  color: ColorResource.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),const SizedBox(height: 30),
              CommonElevatedButton(circularRadius: 30,
                height: 50,
                width: 270,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginPage();
                  },));
                },
                text: StringResource.loginIn,
                textColor: ColorResource.white,
                fontSize: 24,
                fontWeight: FontWeight.w500,
                buttonColor:ColorResource.blueAccent,
              ),
              const SizedBox(height: 20),
              CommonElevatedButton(circularRadius: 30,colorBorder: Colors.black45,
                height: 50,
                width: 270,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginPage();
                  },));
                },
                text: StringResource.signUp,
                textColor: ColorResource.black.withOpacity(0.7),
                fontSize: 24,
                fontWeight: FontWeight.w500,
                buttonColor:ColorResource.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
