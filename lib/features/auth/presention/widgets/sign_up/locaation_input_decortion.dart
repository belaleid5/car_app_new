import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/app/theme/my_colors.dart';
import 'package:flutter/material.dart';


class LocationInputDecoration {
  static InputDecoration build(BuildContext context) {
    return InputDecoration(
      hintText: 'Select Location',
      hintStyle: TextStyle(
      color: context.color.textSecondary,
      fontSize: 18,
    ),
      filled: true,
      fillColor: context.colors.background,
      prefixIcon: Icon(
        Icons.location_on_outlined,
        color: context.color.textSecondary,
        size: 16,
      ),
      contentPadding: EdgeInsets.symmetric(horizontal:12 , vertical: 8),
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
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(
        color: focused ? context.colors.primary : context.colors.stroke,
        width: focused ?  25 : 25 ,
      ),
    );
  }
}
