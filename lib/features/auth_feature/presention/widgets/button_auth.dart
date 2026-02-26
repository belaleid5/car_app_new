import 'package:car_app_new/core/app/theme/my_colors.dart';
import 'package:flutter/material.dart';

class ButtonAuth extends StatelessWidget {
  const ButtonAuth({
    this.widgetTitle,
    super.key,
    this.onPressed,
  });
  final VoidCallback? onPressed;
  final Widget? widgetTitle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: context.colors.button,
        minimumSize: const Size(390, 62),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(62),
        ),
      ),
      child: widgetTitle ?? const SizedBox.shrink(),
    );
  }
}
