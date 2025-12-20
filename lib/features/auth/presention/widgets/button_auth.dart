
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonAuth extends StatelessWidget {
  const ButtonAuth({
    required this.widgetTitle,
    required this.backgroundColor, super.key,
    this.onPressed,
  });
  final VoidCallback? onPressed;
  final Widget widgetTitle;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: Size(400.w, 62.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
      child: widgetTitle
    );
  }
}
