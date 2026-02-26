import 'package:car_app_new/features/auth_feature/presention/widgets/custom_divider.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/custom_text_or.dart';
import 'package:flutter/material.dart';

class SectionOrText extends StatelessWidget {
  const SectionOrText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDivider()),
        CustomTextOr(),
        Expanded(child: CustomDivider()),
      ],
    );
  }
}
