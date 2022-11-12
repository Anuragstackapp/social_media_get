import 'package:flutter/material.dart';
import 'package:social_media_get/common/widget/common_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        height: 100,

        color: Colors.red,
        child: const CommonText(
          text: "Hello Keval Antala",
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
      )),
    );
  }
}
