import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/shared/model/location_model.dart';
import 'package:flutter/material.dart';

class LocationDropdownItems {
  static DropdownMenuItem<int> emptyItem(BuildContext context) {
    return DropdownMenuItem<int>(
      enabled: false,
      child: Text(
        'No locations available',
        style: TextStyle(
      color: context.color.textSecondary,
      fontSize: 14,
    ),
      ),
    );
  }

  static DropdownMenuItem<int> locationItem(
    BuildContext context,
    LocationModel location,
  ) {
    return DropdownMenuItem<int>(
      value: location.id,
      child: Text(
        location.name!,
        style: TextStyle(
      color: context.color.textPrimary,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
      ),
    );
  }
}
