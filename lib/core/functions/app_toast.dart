import 'package:car_app_new/core/styles/theme/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppToast {
  static Future<void> show({
    required String message,
    Color? color1,
    Color? color2,
    ToastGravity gravity = ToastGravity.TOP,
    int timeInSecForIosWeb = 3,
  }) async {
    color1 ??= MyColors.light.white;
    color2 ??= MyColors.light.black;
    await Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: gravity,
      timeInSecForIosWeb: timeInSecForIosWeb,
      backgroundColor: Colors.transparent, 
      textColor: Colors.white,
      fontSize: 16,
      webBgColor: 'linear-gradient(to right, #000000, #434343)',
    );

  }
}
