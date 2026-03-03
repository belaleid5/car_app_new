import 'package:car_app_new/features/car_feature/search/presention/widget/bottom_sheet_widget/custom_select_type_cars.dart';
import 'package:flutter/material.dart';
class CarTextSelector extends StatefulWidget {
  const CarTextSelector({
    super.key,
    required this.items,
    this.initialValue,
    this.onChanged,
  });

  final List<String> items;
  final String? initialValue;
  final void Function(String?)? onChanged;

  @override
  State<CarTextSelector> createState() => _CarTextSelectorState();
}

class _CarTextSelectorState extends State<CarTextSelector> {
  late String _selected;

  @override
  void initState() {
    super.initState();
    _selected = widget.initialValue ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: widget.items
            .map(
              (type) => TextSelector(
                width: 90,
                label: type,
                isSelected: _selected == type,
                onTap: () {
                  final newValue = _selected == type ? '' : type;
                  setState(() => _selected = newValue);
                  widget.onChanged?.call(
                    newValue.isEmpty ? null : newValue,
                  );
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
