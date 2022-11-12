import 'package:flutter/material.dart';


class CommonText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final String? fontFamily;
  final int ;

  const CommonText(
      {Key? key,
      this.text,
      this.fontSize,
      this.fontWeight,
      this.color,
      this.textAlign, this.fontFamily,this.int})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,maxLines: int,
      textAlign: textAlign,
      style: TextStyle(fontFamily: fontFamily,
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
          overflow: TextOverflow.ellipsis),
    );
  }
}
