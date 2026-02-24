import 'package:car_app_new/core/styles/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogoCarDarkSmall extends StatelessWidget {
  const LogoCarDarkSmall({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AppImages.logoDarkCarSmallSvg,
      height: 36,
    );
  }
}
