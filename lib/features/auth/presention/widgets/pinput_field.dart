import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/app/theme/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class PinputField extends StatefulWidget {
  const PinputField({required this.controller, super.key});
  final TextEditingController controller ;

  @override
  State<PinputField> createState() => _PinputFieldState();
}

class _PinputFieldState extends State<PinputField> {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Pinput(
        controller:widget.controller ,
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
