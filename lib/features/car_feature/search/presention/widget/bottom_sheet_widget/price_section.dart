import 'package:car_app_new/features/car_feature/search/presention/widget/bottom_sheet_widget/price_range_section.dart';
import 'package:flutter/material.dart';

class PriceSection extends StatefulWidget {
  const PriceSection({
    super.key,
    required this.onChanged,
    this.initialMin = 10,
    this.initialMax = 230,
  });

  final void Function(double min, double max) onChanged;
  final double initialMin;
  final double initialMax;

  @override
  State<PriceSection> createState() => _PriceSectionState();
}

class _PriceSectionState extends State<PriceSection> {
  late RangeValues _values;

  @override
  void initState() {
    super.initState();
    _values = RangeValues(widget.initialMin, widget.initialMax);
  }

  @override
  Widget build(BuildContext context) {
    return PriceRangeSection(
      values: _values,
      onChanged: (v) {
        setState(() => _values = v);
        widget.onChanged(v.start, v.end);
      },
    );
  }
}