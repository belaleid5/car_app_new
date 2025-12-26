import 'package:car_app_new/core/styles/theme/my_colors.dart';
import 'package:car_app_new/features/auth/data/models/response/location_model.dart';
import 'package:car_app_new/features/auth/presention/widgets/sign_up/locaation_input_decortion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationDropdownWidget extends StatelessWidget {
  const LocationDropdownWidget({
    required this.locations, required this.selectedId, required this.onChanged, super.key,
  });

  final List<LocationModel> locations;
  final int? selectedId;
  final ValueChanged<int?> onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<int>(
      value: _safeSelectedValue(),
      isExpanded: true,
      decoration: LocationInputDecoration.build(context),
      dropdownColor: context.colors.background,
      borderRadius: BorderRadius.circular(12.r),
      items: _buildItems(context),
      onChanged: locations.isEmpty ? null : onChanged,
      validator: (value) =>
          value == null ? 'Please select a location' : null,
    );
  }

  int? _safeSelectedValue() {
    if (selectedId == null) return null;
    final exists = locations.any((e) => e.id == selectedId);
    return exists ? selectedId : null;
  }

  List<DropdownMenuItem<int>> _buildItems(BuildContext context) {
    return locations
        .map(
          (location) => DropdownMenuItem<int>(
            value: location.id,
            child: Text(location.name),
          ),
        )
        .toList();
  }
}
