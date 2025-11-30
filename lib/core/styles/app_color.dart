import 'dart:ui';

class AppColors {
  // Primary Colors
  static const Color primaryLightest = Color(0xFFEFF6FF);
  static const Color primaryLighter = Color(0xFFDBEAFE);
  static const Color primaryLight = Color(0xFFBFDBFE);
  static const Color primary = Color(0xFF93C5FD);
  static const Color primaryDark = Color(0xFF60A5FA);
  static const Color primaryDarker = Color(0xFF3B82F6);
  static const Color primaryDarkest = Color(0xFF2563EB);
  static const Color primaryUltraDark = Color(0xFF1D4ED8);
  static const Color primaryNight = Color(0xFF1E40AF);
  static const Color primaryMidnight = Color(0xFF1E3A8A);

  // Neutral/Gray Colors
  static const Color neutralLightest = Color(0xFFFAFAFA);
  static const Color neutralLighter = Color(0xFFF5F5F5);
  static const Color neutralLight = Color(0xFFE5E5E5);
  static const Color neutral = Color(0xFFD4D4D4);
  static const Color neutralDark = Color(0xFFA3A3A3);
  static const Color neutralDarker = Color(0xFF737373);
  static const Color neutralDarkest = Color(0xFF525252);
  static const Color neutralUltraDark = Color(0xFF404040);
  static const Color neutralNight = Color(0xFF262626);
  static const Color neutralMidnight = Color(0xFF21292B);

  // Success Colors
  static const Color successLightest = Color(0xFFF0FDF4);
  static const Color successLighter = Color(0xFFDCFCE7);
  static const Color success = Color(0xFF22C55E);
  static const Color successDark = Color(0xFF16A34A);

  // Warning Colors  
  static const Color warningLightest = Color(0xFFFEFDF8);
  static const Color warningLighter = Color(0xFFFEF3C7);
  static const Color warning = Color(0xFFEAB308);
  static const Color warningDark = Color(0xFFCA8A04);

  // Error Colors
  static const Color errorLightest = Color(0xFFFEF2F2);
  static const Color errorLighter = Color(0xFFFECECE);
  static const Color error = Color(0xFFEF4444);
  static const Color errorDark = Color(0xFFDC2626);

  // Common Colors
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);

  // Semantic Colors
  static Color get background => neutralLightest;
  static Color get surface => white;
  static Color get onPrimary => white;
  static Color get onSurface => neutralMidnight;
  static Color get onBackground => neutralMidnight;
}