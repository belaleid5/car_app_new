// core/styles/colors/app_colors_dark.dart
import 'package:flutter/material.dart';

/// Dark Theme Colors
class AppColorsDark {
  AppColorsDark._();

  // ========== Main Colors ==========
  
  /// Primary - #ededed (Light Gray - inverted from light theme)
  static const Color primary = Color(0xFFEDEDED);
  
  /// Secondary - #454545 (Dark Gray - inverted from light theme)
  static const Color secondary = Color(0xFF454545);
  
  /// Tertiary - #3b82f6 (Blue - same as light)
  static const Color tertiary = Color(0xFF3B82F6);

  // ========== Text Colors ==========
  
  /// Primary Text - #ffffff (White)
  static const Color textPrimary = Color(0xFFFFFFFF);
  
  /// Secondary Text - #b0b0b0 (Light Gray)
  static const Color textSecondary = Color(0xFFB0B0B0);

  // ========== Other Colors ==========
  
  /// Stroke - #3d3d3d (Dark Gray)
  static const Color stroke = Color(0xFF3D3D3D);
  
  /// Shades - #1a1a1a (Very Dark Gray)
  static const Color shades = Color(0xFF1A1A1A);
  
  /// Button - #3b82f6 (Blue - same as tertiary)
  static const Color button = Color(0xFF3B82F6);
  
  /// Icon - #a0a0a0 (Light Gray)
  static const Color icon = Color(0xFFA0A0A0);
  
  /// Background - #0f0f0f (Almost Black)
  static const Color background = Color(0xFF0F0F0F);

  // ========== Common Colors ==========
  
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);

  // ========== Semantic Colors ==========
  
  /// Surface Color (Cards, Containers)
  static const Color surface = Color(0xFF1E1E1E);
  
  /// On Primary (Text on Primary Color)
  static Color get onPrimary => black;
  
  /// On Surface (Text on Surface)
  static Color get onSurface => textPrimary;
  
  /// On Background (Text on Background)
  static Color get onBackground => textPrimary;

  // ========== Shadows ==========
  
  static Color get shadowLight => black.withOpacity(0.3);
  static Color get shadowMedium => black.withOpacity(0.5);
  static Color get shadowDark => black.withOpacity(0.7);

  // ========== Dividers & Borders ==========
  
  static Color get divider => stroke;
  static Color get border => stroke;
}
