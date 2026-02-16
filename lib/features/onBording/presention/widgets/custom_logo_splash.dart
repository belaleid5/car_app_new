import 'package:car_app_new/core/common/widgets/custom_logo_app_svg.dart';
import 'package:flutter/material.dart';

class CustomSplashLogo extends StatelessWidget {
  const CustomSplashLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 120,
      height: 120,
      child: CustomLogoAppSvg(),
    );
  }
}