import 'package:flutter/material.dart';

class SelectionHint extends StatelessWidget {
  final bool selectingHour;

  const SelectionHint({super.key, required this.selectingHour});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      child: Text(
        selectingHour ? 'Tap to select hour' : 'Tap to select minute',
        key: ValueKey(selectingHour),
        style: const TextStyle(color: Colors.black38, fontSize: 11),
      ),
    );
  }
}