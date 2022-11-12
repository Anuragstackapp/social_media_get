import 'package:flutter/material.dart';
import 'package:social_media_get/common/constant/color_res.dart';

// ignore: must_be_immutable
class CommonTextField extends StatelessWidget {
  final Widget? suffixIcon;
  final TextInputType? textInputType;
  final TextEditingController? textEditingController;
  final String? hintText;
  final Border? border;
  final String? Function(String?)? validator;
  ValueChanged<String>? onFieldSubmitted;
  bool? obscureText;
  final double? fontSize;
  final FontWeight? fontWeight;
  int? maxLines = 1;
  int? maxLength;
  final String? errorText;
  GestureTapCallback? onTap;

  CommonTextField(
      {super.key,
      this.textInputType,
      this.suffixIcon,
      this.textEditingController,
      this.hintText,
      this.border,
      int? width,
      this.validator,
      this.onFieldSubmitted,
      this.fontSize,
      this.fontWeight,
      this.maxLines,
      this.maxLength,
      this.errorText,this.obscureText,this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: TextFormField(

         onTap: onTap,

          autocorrect: false,
          cursorColor: ColorResource.black,
          maxLines: 1,
          maxLength: maxLength,
          onFieldSubmitted: onFieldSubmitted,
          keyboardType: textInputType,
          controller: textEditingController,
          validator: validator,
          obscureText: obscureText != null ? obscureText! : false ,
          decoration: InputDecoration(
            errorText: errorText,
            focusedBorder: OutlineInputBorder(
                borderSide:  const BorderSide(color: ColorResource.black),
                borderRadius: BorderRadius.circular(8)),
            contentPadding: const EdgeInsets.only(top: 5, left: 15),
            hintText: hintText,
            suffixIcon: suffixIcon,
            hintStyle:
            const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: ColorResource.black
            ),
            border: OutlineInputBorder(

              borderSide: const BorderSide(width: 0.1, color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}
