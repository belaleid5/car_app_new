import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/styles/theme/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class PinputField extends StatelessWidget {
  const PinputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Pinput(
        defaultPinTheme: PinTheme(
          margin: const EdgeInsets.symmetric(horizontal: 6),
          width: 56,
          height: 56,
          textStyle: context.textStyle.copyWith(
            fontSize: 20,
            color: Colors.black,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: context.colors.button.withAlpha(125),
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        focusedPinTheme: PinTheme(
          decoration: BoxDecoration(
            border: Border.all(
              color: context.colors.primary,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        submittedPinTheme: PinTheme(
          decoration: BoxDecoration(
            color: context.colors.primary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onCompleted: (pin) => print('OTP: $pin'),
        onChanged: (value) => print('Changed: $value'),
      ),
    );
  }
}
