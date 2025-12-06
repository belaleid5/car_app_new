import 'package:car_app_new/features/auth/presention/widgets/custom_text_qent.dart';
import 'package:car_app_new/features/auth/presention/widgets/logo_car_dark_small.dart';
import 'package:flutter/material.dart';

class SectionLogoAndTitleQent extends StatelessWidget {
  const SectionLogoAndTitleQent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      spacing: 8,
      children: [
      LogoCarDarkSmall(),
        CustomTextQent(),
      ],
    );
  }
}
