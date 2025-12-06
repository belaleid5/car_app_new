import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/styles/theme/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CustomTextFormCountry extends StatelessWidget {
  const CustomTextFormCountry({
    super.key,
    this.controller,
    this.validate,
    this.onChanged,
    this.initialCountryCode = 'EG',
  });
  final TextEditingController? controller;
  final String? Function(String?)? validate;
  final Function(String)? onChanged;
  final String? initialCountryCode;

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      controller: controller,
      decoration: InputDecoration(
        hintText: 'Phone Number',
        hintStyle: TextStyle(
          color: context.color.textSecondary,
          fontSize: 14.sp,
        ),
        filled: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.67.r),
          borderSide: BorderSide(color: context.colors.stroke),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.67.r),
          borderSide: BorderSide(color: context.colors.stroke),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.67.r),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.67.r),
          borderSide: const BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.67.r),
          borderSide: const BorderSide(color: Colors.red, width: 2),
        ),
      ),
      initialCountryCode: initialCountryCode,
      onChanged: (phone) {
        onChanged?.call(phone.completeNumber);
      },
      validator: (phone) {
        if (validate != null) {
          return validate!(phone?.completeNumber);
        }
        return null;
      },
      style: TextStyle(
        color: context.color.textPrimary,
        fontSize: 16.sp,
      ),
      dropdownTextStyle: TextStyle(
        color: context.color.textPrimary,
        fontSize: 14.sp,
      ),
      dropdownIconPosition: IconPosition.trailing,
      flagsButtonPadding: EdgeInsets.symmetric(horizontal: 12.w),
    );
  }
}
