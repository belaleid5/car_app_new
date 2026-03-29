import 'package:car_app_new/core/common/widgets/custom_logo_app_svg.dart';
import 'package:flutter/material.dart';

class CustomSplashLogo extends StatelessWidget {
  const CustomSplashLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 1.2,
        ),
      ),
      child: const CustomLogoAppSvg(),
    );
  }
}
