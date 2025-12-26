import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/styles/theme/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationInputDecoration {
  static InputDecoration build(BuildContext context) {
    return InputDecoration(
      hintText: 'Select Location',
      hintStyle: TextStyle(
      color: context.color.textSecondary,
      fontSize: 14.sp,
    ),
      filled: true,
      fillColor: context.colors.background,
      prefixIcon: Icon(
        Icons.location_on_outlined,
        color: context.color.textSecondary,
        size: 22.sp,
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      border: _buildBorder(context),
      enabledBorder: _buildBorder(context),
      focusedBorder: _buildBorder(context, focused: true),
    );
  }

  static OutlineInputBorder _buildBorder(
    BuildContext context, {
    bool focused = false,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: BorderSide(
        color: focused ? context.colors.primary : context.colors.stroke,
        width: focused ? 2.w : 1.w,
      ),
    );
  }
}
