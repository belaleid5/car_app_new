// core/styles/theme/color_extension.dart
import 'package:flutter/material.dart';

/// Custom Colors Extension للـ Theme
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

  // ========== Common Colors ==========
  final Color white;
  final Color black;
  final Color spinKitColor;

  // ========== Light Theme Colors ==========
  static const MyColors light = MyColors(
    primary: Color(0xFFFFFFFF),
    secondary: Color(0xFFEDEDED),
    tertiary: Color(0xFF3B82F6),
    textPrimary: Color(0xFF000000),
    textSecondary: Color(0xFF7F7F7F),
    stroke: Color(0xFFD7D7D7),
    shades: Color(0xFFFFFFFF),
    button: Color(0xFF000000),
    icon: Color(0xFF767676),
    background: Color(0xFFF8F8F8),
    white: Color(0xFFFFFFFF),
    black: Color(0xFF000000),
    spinKitColor: Color(0xFFFFFFFF),
    divider: Color(0xFF767676),
  );

  // ========== Dark Theme Colors ==========
  static const MyColors dark = MyColors(
    primary: Color(0xFF000000),
    secondary: Color(0xFF454545),
    tertiary: Color(0xFF3B82F6),
    textPrimary: Color(0xFFFFFFFF),
    textSecondary: Color(0xFFB0B0B0),
    stroke: Color(0xFF3D3D3D),
    shades: Color(0xFF1A1A1A),
    button: Color(0xFFFFFFFF),
    icon: Color(0xFFA0A0A0),
    background: Color(0xFF0F0F0F),
    white: Color(0xFFFFFFFF),
    black: Color(0xFF000000),
    spinKitColor: Color(0xFF000000),
    divider: Color(0xFFFFFFFF),
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
    Color ? divider,
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
      spinKitColor: spinKitColor,
      divider: divider ?? this.divider,
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
      divider: Color.lerp(spinKitColor, other.divider, t)!,
    );
  }
}

extension MyColorsExtension on BuildContext {
  MyColors get colors => Theme.of(this).extension<MyColors>()!;
}
