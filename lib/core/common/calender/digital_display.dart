import 'package:flutter/material.dart';
import 'digit_box.dart';
import 'period_button.dart';

class DigitalDisplay extends StatelessWidget {
  final int hour;
  final int minute;
  final bool isAm;
  final bool selectingHour;
  final VoidCallback onHourTap;
  final VoidCallback onMinuteTap;
  final VoidCallback onAmTap;
  final VoidCallback onPmTap;

  const DigitalDisplay({
    super.key,
    required this.hour,
    required this.minute,
    required this.isAm,
    required this.selectingHour,
    required this.onHourTap,
    required this.onMinuteTap,
    required this.onAmTap,
    required this.onPmTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DigitBox(
          value: hour.toString().padLeft(2, '0'),
          isActive: selectingHour,
          onTap: onHourTap,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            ':',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        DigitBox(
          value: minute.toString().padLeft(2, '0'),
          isActive: !selectingHour,
          onTap: onMinuteTap,
        ),
        const SizedBox(width: 12),
        Column(
          children: [
            PeriodButton(label: 'AM', isSelected: isAm,  onTap: onAmTap),
            const SizedBox(height: 6),
            PeriodButton(label: 'PM', isSelected: !isAm, onTap: onPmTap),
          ],
        ),
      ],
    );
  }
}