import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/features/car_feature/search/presention/widget/bottom_sheet_widget/custom_select_type_cars.dart';
import 'package:flutter/material.dart';

class CarTypeSelector extends StatefulWidget {
  const CarTypeSelector({
    super.key,
    this.initialValue,
    this.onChanged,
  });

  final String? initialValue;
  final void Function(String?)? onChanged;

  @override
  State<CarTypeSelector> createState() => _CarTypeSelectorState();
}

class _CarTypeSelectorState extends State<CarTypeSelector> {
  late String _selected;

  static const _types = ['All', 'Regular', 'Luxury'];

  @override
  void initState() {
    super.initState();
    _selected = widget.initialValue ?? 'All';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.color.white,
        border: Border.all(color: context.color.stroke),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: _types
            .map(
              (type) => TextSelector(
                width: 125,
                label: type,
                isSelected: _selected == type,
                onTap: () {
                  setState(() => _selected = type);
                  widget.onChanged?.call(type == 'All' ? null : type);
                },
              ),
            )
            .toList(),
      ),
    );
  }
}