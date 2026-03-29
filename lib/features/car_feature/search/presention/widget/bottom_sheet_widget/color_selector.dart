import 'package:car_app_new/features/car_feature/search/presention/widget/bottom_sheet_widget/color_option_title.dart';
import 'package:flutter/material.dart';

class ColorSelector extends StatefulWidget {
  const ColorSelector({
    super.key,
    this.initialColorId,
    this.onChanged,
  });

  final int? initialColorId;
  final void Function(int?)? onChanged;

  @override
  State<ColorSelector> createState() => _ColorSelectorState();
}

class _ColorSelectorState extends State<ColorSelector> {
  late int? _selectedId;

  static const _colors = {
    1: ('White', Color(0xFFFFFFFF)),
    2: ('Gray', Color(0xFFADADAD)),
    3: ('Blue', Color(0xFF0000FF)),
    4: ('Black', Color(0xFF000000)),
  };

  @override
  void initState() {
    super.initState();
    _selectedId = widget.initialColorId;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: _colors.entries
          .map(
            (entry) => ColorOptionTile(
              color: entry.value.$2,
              label: entry.value.$1,
              selected: _selectedId == entry.key,
              onTap: () {
                final newId = _selectedId == entry.key ? null : entry.key;
                setState(() => _selectedId = newId);
                widget.onChanged?.call(newId);
              },
            ),
          )
          .toList(),
    );
  }
}