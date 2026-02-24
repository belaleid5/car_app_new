import 'package:car_app_new/core/styles/app_images.dart';
import 'package:flutter/material.dart';

class CircleUserImage extends StatelessWidget {
  const CircleUserImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: Image.asset(AppImages.personImage),
    );
  }
}
