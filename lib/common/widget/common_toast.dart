import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class CommonToast{
  static void showBottomShortToast({required String msg}) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.blue,

        textColor: Colors.white);
  }
}