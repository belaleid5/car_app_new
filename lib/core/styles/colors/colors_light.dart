// core/styles/colors/app_colors_light.dart
import 'package:flutter/material.dart';

/// Light Theme Colors
class AppColorsLight {
  AppColorsLight._();

  // ========== Main Colors ==========
  
  /// Primary - #454545 (Dark Gray)
  static const Color primary = Color(0xFF454545);
  
  /// Secondary - #ededed (Very Light Gray)
  static const Color secondary = Color(0xFFEDEDED);
  
  /// Tertiary - #3b82f6 (Blue)
  static const Color tertiary = Color(0xFF3B82F6);

  // ========== Text Colors ==========
  
  /// Primary Text - #000000 (Black)
  static const Color textPrimary = Color(0xFF000000);
  
  /// Secondary Text - #7f7f7f (Medium Gray)
  static const Color textSecondary = Color(0xFF7F7F7F);

  // ========== Other Colors ==========
  
  /// Stroke - #d7d7d7 (Light Gray)
  static const Color stroke = Color(0xFFD7D7D7);
  
  /// Shades - #ffffff (White)
  static const Color shades = Color(0xFFFFFFFF);
  
  /// Button - #21292b (Very Dark Gray)
  static const Color button = Color(0xFF21292B);
  
  /// Icon - #767676 (Gray)
  static const Color icon = Color(0xFF767676);
  
  /// Background - #f8f8f8 (Off White)
  static const Color background = Color(0xFFF8F8F8);

  // ========== Common Colors ==========
  
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);

  // ========== Semantic Colors ==========
  
  /// Surface Color (Cards, Containers)
  static Color get surface => white;
  
  /// On Primary (Text on Primary Color)
  static Color get onPrimary => white;
  
  /// On Surface (Text on Surface)
  static Color get onSurface => textPrimary;
  
  /// On Background (Text on Background)
  static Color get onBackground => textPrimary;

  // ========== Shadows ==========
  
  static Color get shadowLight => black.withOpacity(0.05);
  static Color get shadowMedium => black.withOpacity(0.1);
  static Color get shadowDark => black.withOpacity(0.2);

  // ========== Dividers & Borders ==========
  
  static Color get divider => stroke;
  static Color get border => stroke;
  
}
