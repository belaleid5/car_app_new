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
    this.onCountryChanged,   
    this.initialCountryCode = 'EG',
  });

  final TextEditingController? controller;
  final String? Function(String?)? validate;
  final void Function(String)? onChanged;
  final void Function(String countryISOCode, String dialCode)? onCountryChanged;
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
      ),
      initialCountryCode: initialCountryCode,
      onChanged: (phone) {
        onChanged?.call(phone.completeNumber);
        onCountryChanged?.call(
          phone.countryISOCode,  
          '+${phone.countryCode}', 
        );
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
    );
  }
}
