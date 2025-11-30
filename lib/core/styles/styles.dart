// core/styles/text_styles.dart
import 'package:car_app_new/core/styles/app_color.dart';
import 'package:car_app_new/core/styles/fonts/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  TextStyles._();

  static TextStyle displayLarge = TextStyle(
    fontSize: 57.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.onSurface,
    height: 1.12,
    letterSpacing: -0.25,
  );

  static TextStyle displayMedium = TextStyle(
    fontSize: 45.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.onSurface,
    height: 1.16,
  );

  static TextStyle displaySmall = TextStyle(
    fontSize: 36.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.onSurface,
    height: 1.22,
  );

  /// Headline - للعناوين الرئيسية
  static TextStyle headlineLarge = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.onSurface,
    height: 1.25,
  );

  static TextStyle headlineMedium = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColors.onSurface,
    height: 1.29,
  );

  static TextStyle headlineSmall = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColors.onSurface,
    height: 1.33,
  );

  /// Title - للعناوين الفرعية
  static TextStyle titleLarge = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColors.onSurface,
    height: 1.27,
  );

  static TextStyle titleMedium = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.onSurface,
    height: 1.5,
    letterSpacing: 0.15,
  );

  static TextStyle titleSmall = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.onSurface,
    height: 1.43,
    letterSpacing: 0.1,
  );

  // ========== Body (النصوص الأساسية) ==========
  
  static TextStyle bodyLarge = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.onSurface,
    height: 1.5,
    letterSpacing: 0.5,
  );

  static TextStyle bodyMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.onSurface,
    height: 1.43,
    letterSpacing: 0.25,
  );

  static TextStyle bodySmall = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.onSurface,
    height: 1.33,
    letterSpacing: 0.4,
  );

  // ========== Label (للأزرار والتسميات) ==========
  
  static TextStyle labelLarge = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.onSurface,
    height: 1.43,
    letterSpacing: 0.1,
  );

  static TextStyle labelMedium = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.onSurface,
    height: 1.33,
    letterSpacing: 0.5,
  );

  static TextStyle labelSmall = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.onSurface,
    height: 1.45,
    letterSpacing: 0.5,
  );

  // ========== Custom Styles (الأنماط المخصصة) ==========

  /// Primary Color Variations
  static TextStyle font32PrimaryBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.primaryDarker,
  );

  static TextStyle font24PrimaryBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.primaryDarker,
  );

  static TextStyle font18PrimarySemiBold = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColors.primaryDarker,
  );

  static TextStyle font16PrimaryMedium = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.primaryDarker,
  );

  static TextStyle font14PrimaryRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.primaryDarker,
  );

  /// Dark/OnSurface Variations
  static TextStyle font24DarkBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.onSurface,
  );

  static TextStyle font18DarkBold = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.bold,
    color: AppColors.onSurface,
  );

  static TextStyle font18DarkSemiBold = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColors.onSurface,
  );

  static TextStyle font16DarkMedium = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.onSurface,
  );

  static TextStyle font14DarkMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.onSurface,
  );

  static TextStyle font14DarkRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.onSurface,
  );

  static TextStyle font12DarkRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.onSurface,
  );

  /// Gray/Neutral Variations
  static TextStyle font16GrayMedium = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.neutralDarker,
  );

  static TextStyle font14GrayRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.neutralDarker,
  );

  static TextStyle font14LightGrayRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.neutralDark,
  );

  static TextStyle font12GrayRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.neutralDarker,
  );

  static TextStyle font12GrayMedium = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.neutralDarker,
  );

  /// White Variations
  static TextStyle font18WhiteMedium = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.white,
  );

  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: AppColors.white,
  );

  static TextStyle font16WhiteMedium = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.white,
  );

  static TextStyle font14WhiteMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.white,
  );

  /// Success/Error/Warning Styles
  static TextStyle font14SuccessMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.success,
  );

  static TextStyle font14ErrorMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.error,
  );

  static TextStyle font14WarningMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.warning,
  );

  static TextStyle font12ErrorRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.error,
  );

  // ========== Helper Methods ==========

  /// نسخ Style مع تعديل اللون
  static TextStyle withColor(TextStyle style, Color color) {
    return style.copyWith(color: color);
  }

  /// نسخ Style مع تعديل الحجم
  static TextStyle withSize(TextStyle style, double size) {
    return style.copyWith(fontSize: size.sp);
  }

  /// نسخ Style مع تعديل الوزن
  static TextStyle withWeight(TextStyle style, FontWeight weight) {
    return style.copyWith(fontWeight: weight);
  }
}