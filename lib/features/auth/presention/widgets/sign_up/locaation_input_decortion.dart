import 'package:car_app_new/core/app/theme/my_colors.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class LocationInputDecoration {
  static InputDecoration build(BuildContext context) {
    return InputDecoration(
      hintText: 'Select Location',
      hintStyle: TextStyle(
        color: context.color.textSecondary,
        fontSize: 15,
      ),
      filled: true,
      fillColor: context.colors.background, // ✅ اللون الثابت
      prefixIcon: Icon(
        Icons.location_on_outlined,
        color: context.color.textSecondary,
        size: 16,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      border: _buildBorder(context),
      enabledBorder: _buildBorder(context),
      focusedBorder: _buildBorder(context, focused: true),
      disabledBorder: _buildBorder(context), // ✅ مهم
    );
  }

  static OutlineInputBorder _buildBorder(
    BuildContext context, {
    bool focused = false,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
        color: focused ? context.colors.primary : context.colors.stroke,
        width: 1.5, // ✅ المشكلة كانت هنا - كانت 25 !
      ),
    );
  }
}
