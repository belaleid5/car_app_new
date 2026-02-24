import 'package:car_app_new/core/app/theme/my_colors.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class PinputField extends StatefulWidget {
  const PinputField({
    required this.controller,
    super.key,
    this.hasError = false,
  });

  final TextEditingController controller;
  final bool hasError;

  @override
  State<PinputField> createState() => _PinputFieldState();
}

class _PinputFieldState extends State<PinputField> {
  final _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultTheme = PinTheme(
      width: 65,
      height: 62,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      textStyle: context.textStyle.copyWith(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: context.colors.textPrimary,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: context.colors.black.withValues(alpha: 0.2),
          width: 0.8,
        ),
        borderRadius: BorderRadius.circular(14),
      ),
    );

    final focusedTheme = defaultTheme.copyWith(
      height: 66,
      width: 62,
      decoration: BoxDecoration(
        color: context.colors.primary.withValues(alpha: 0.06),
        border: Border.all(
          color: context.colors.black.withValues(alpha: 0.2),
          width: 0.8,
        ),
        borderRadius: BorderRadius.circular(14),
      ),
    );

    final submittedTheme = defaultTheme.copyWith(
      decoration: BoxDecoration(
        color: context.colors.primary.withValues(alpha: 0.1),
        border: Border.all(
          color: context.colors.black.withValues(alpha: 0.2),
          width: 0.8,
        ),
        borderRadius: BorderRadius.circular(14),
      ),
    );

    final errorTheme = defaultTheme.copyWith(
      decoration: BoxDecoration(
        color: Colors.red.withValues(alpha: 0.06),
        border: Border.all(
          color: Colors.red,
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(14),
      ),
    );

    return Center(
      child: Pinput(
        controller: widget.controller,
        focusNode: _focusNode,
        autofocus: true,
        defaultPinTheme: widget.hasError ? errorTheme : defaultTheme,
        focusedPinTheme: widget.hasError ? errorTheme : focusedTheme,
        submittedPinTheme: widget.hasError ? errorTheme : submittedTheme,
        animationCurve: Curves.easeOutCubic,
        animationDuration: const Duration(milliseconds: 250),
        cursor: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: 22,
              height: 2.5,
              decoration: BoxDecoration(
                color: context.colors.primary,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
