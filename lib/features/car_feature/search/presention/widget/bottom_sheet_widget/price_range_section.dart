import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/features/car_feature/search/presention/widget/bottom_sheet_widget/bydget_price.dart';
import 'package:car_app_new/features/car_feature/search/presention/widget/bottom_sheet_widget/price_pointer.dart';
import 'package:flutter/material.dart';

class PriceRangeSection extends StatelessWidget {
  const PriceRangeSection({super.key, 
    required this.values,
    required this.onChanged,
  });

  final RangeValues values;
  final ValueChanged<RangeValues> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
          child: CustomPaint(
            painter: PricePointer(
              activeStart: values.start / 250,
              activeEnd: values.end / 250,
              activeColor: context.color.black,
              inactiveColor: context.color.stroke,
            ),
            child: const SizedBox.expand(),
          ),
        ),
        const SizedBox(height: 4),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 2,
            activeTrackColor: context.color.black,
            inactiveTrackColor: context.color.stroke,
            thumbColor: context.color.white,
            rangeThumbShape: const RoundRangeSliderThumbShape(
              enabledThumbRadius: 14,
            ),
            overlayShape: SliderComponentShape.noOverlay,
          ),
          child: RangeSlider(
            values: values,
            min: 0,
            max: 250,
            onChanged: onChanged,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BudgetTag(
              title: 'Minimum',
              value: '\$${values.start.round()}',
            ),
            BudgetTag(
              title: 'Maximum',
              value: '\$${values.end.round()}+',
            ),
          ],
        ),
      ],
    );
  }
}