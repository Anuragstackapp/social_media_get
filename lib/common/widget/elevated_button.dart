import 'package:flutter/material.dart';
import 'package:social_media_get/common/widget/common_text.dart';


class CommonElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? text;
  final Color? textColor;
  final Color? buttonColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double width;
  final double height;
  final double circularRadius;
  final Color? colorBorder;
  final String? fontFamily;

  const CommonElevatedButton(
      {Key? key,
      this.onPressed,
      this.text,
      this.textColor,
      this.fontWeight,
      this.fontSize,
      this.buttonColor,
      required this.width,
      required this.height,
      required this.circularRadius,
      this.colorBorder, this.fontFamily})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          minimumSize: MaterialStatePropertyAll(Size(width, height)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(circularRadius)),
                  side: BorderSide(
                      color: colorBorder != null
                          ? colorBorder!
                          : Colors.transparent,
                      width: 0.5))),
          backgroundColor: MaterialStateProperty.all(buttonColor),
        ),
        onPressed: onPressed,
        child: CommonText(fontFamily: fontFamily,
          text: text,
          color: textColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ));
  }
}
