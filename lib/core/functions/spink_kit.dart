import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


Widget loadingWidget(BuildContext context) {
  return Center(
    child: SpinKitFadingFour(
      size: 30.sp,
      color: context.color.spinKitColor,
    ),
  );
}
