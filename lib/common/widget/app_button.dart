import 'package:flutter/material.dart';
import 'package:social_media_get/common/widget/common_text.dart';


// ignore: must_be_immutable
class AppButton extends StatelessWidget {
  double? topPadding;
  double? bottomPadding;
  double? fontSize;
  double? iconHeight;
  double? iconWidth;
  FontWeight? fontWeight;
  Function()? onTap;
  Color? buttonColor;
  String? text;
  String? buttonIcon;
  final Color? textColor;
  String? fontFamily;

  AppButton(
      {super.key,
        this.topPadding,
        this.bottomPadding,
        this.text,
        this.fontSize,
        this.onTap,
        this.buttonColor,
        this.buttonIcon,
        this.iconHeight,
        this.iconWidth,
        this.fontWeight, this.textColor,this.fontFamily});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(
          left: 40,
          right:40,
          top: topPadding ?? 0,
          bottom: bottomPadding ?? 0,
        ),
        child: Container(
          height: 45,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: buttonColor, borderRadius: BorderRadius.circular(6)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              (buttonIcon == null)
                  ? const SizedBox()
                  : Container(
                  height: iconHeight,
                  width: iconWidth,
                  margin: const EdgeInsets.only(right: 13.52),
                  child: Image.asset(
                    buttonIcon!,
                    fit: BoxFit.fill,
                  )),
              (text == null)? const Text(""):CommonText(fontFamily: fontFamily,
                text: text,
                color: textColor,
                fontSize: fontSize,
                fontWeight: fontWeight,
              )
            ],
          ),
        ),
      ),
    );
  }
}