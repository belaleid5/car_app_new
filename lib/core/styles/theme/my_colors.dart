// core/styles/theme/color_extension.dart
import 'package:flutter/material.dart';


@immutable
class MyColors extends ThemeExtension<MyColors> {
  const MyColors({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.textPrimary,
    required this.textSecondary,
    required this.stroke,
    required this.shades,
    required this.button,
    required this.icon,
    required this.background,
    required this.white,
    required this.black,
    required this.spinKitColor,
    required this.divider,
    required this.rate,
  });

  // ========== Main Colors ==========
  final Color primary;
  final Color secondary;
  final Color tertiary;

  // ========== Text Colors ==========
  final Color textPrimary;
  final Color textSecondary;

  // ========== Other Colors ==========
  final Color stroke;
  final Color shades;
  final Color button;
  final Color icon;
  final Color background;
  final Color divider;
  final Color rate;

  // ========== Common Colors ==========
  final Color white;
  final Color black;
  final Color spinKitColor;

  // ========== Light Theme Colors ==========
  static const MyColors light = MyColors(
    primary: Color(0xFF1A1A1A),
    secondary: Color(0xFFF5F5F5),
    tertiary: Color(0xFF3B82F6),
    textPrimary: Color(0xFF1A1A1A),
    textSecondary: Color(0xFF6B7280),
    stroke: Color(0xFFE5E7EB),
    shades: Color(0xFFFFFFFF),
    button: Color(0xFF1A1A1A),
    icon: Color(0xFF9CA3AF),
    background: Color(0xFFFAFAFA),
    divider: Color(0xFFE5E7EB),
    rate: Color(0xFFFBBF24),
    white: Color(0xFFFFFFFF),
    black: Color(0xFF000000),
    spinKitColor: Color(0xFF1A1A1A),
  );

  // ========== Dark Theme Colors ==========
  static const MyColors dark = MyColors(
    primary: Color(0xFFFFFFFF),
    secondary: Color(0xFF1F2937),
    tertiary: Color(0xFF60A5FA),
    textPrimary: Color(0xFFF9FAFB),
    textSecondary: Color(0xFF9CA3AF),
    stroke: Color(0xFF374151),
    shades: Color(0xFF111827),
    button: Color(0xFFFFFFFF),
    icon: Color(0xFF6B7280),
    background: Color(0xFF0F172A),
    divider: Color(0xFF374151),
    rate: Color(0xFFFBBF24),
    white: Color(0xFFFFFFFF),
    black: Color(0xFF000000),
    spinKitColor: Color(0xFFFFFFFF),
  );

  @override
  MyColors copyWith({
    Color? primary,
    Color? secondary,
    Color? tertiary,
    Color? textPrimary,
    Color? textSecondary,
    Color? stroke,
    Color? shades,
    Color? button,
    Color? icon,
    Color? background,
    Color? white,
    Color? black,
    Color? spinKitColor,
    Color? divider,
    Color? rate,
  }) {
    return MyColors(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      tertiary: tertiary ?? this.tertiary,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      stroke: stroke ?? this.stroke,
      shades: shades ?? this.shades,
      button: button ?? this.button,
      icon: icon ?? this.icon,
      background: background ?? this.background,
      white: white ?? this.white,
      black: black ?? this.black,
      spinKitColor: spinKitColor ?? this.spinKitColor,
      divider: divider ?? this.divider,
      rate: rate ?? this.rate,
    );
  }

  @override
  MyColors lerp(ThemeExtension<MyColors>? other, double t) {
    if (other is! MyColors) return this;

    return MyColors(
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      tertiary: Color.lerp(tertiary, other.tertiary, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      stroke: Color.lerp(stroke, other.stroke, t)!,
      shades: Color.lerp(shades, other.shades, t)!,
      button: Color.lerp(button, other.button, t)!,
      icon: Color.lerp(icon, other.icon, t)!,
      background: Color.lerp(background, other.background, t)!,
      white: Color.lerp(white, other.white, t)!,
      black: Color.lerp(black, other.black, t)!,
      spinKitColor: Color.lerp(spinKitColor, other.spinKitColor, t)!,
      divider: Color.lerp(divider, other.divider, t)!,
      rate: Color.lerp(rate, other.rate, t)!,
    );
  }
}

// ========== Extensions ==========

/// Extension للوصول السريع للألوان من BuildContext
extension MyColorsExtension on BuildContext {
  // ✅ غير الاسم من color لـ colors
  MyColors get colors => Theme.of(this).extension<MyColors>()!;
}

/// Extension للوصول للألوان من ThemeData
extension MyColorsThemeExtension on ThemeData {
  MyColors get myColors => extension<MyColors>()!;
}