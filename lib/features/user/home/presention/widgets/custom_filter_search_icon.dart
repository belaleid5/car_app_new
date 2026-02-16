import 'package:car_app_new/core/styles/theme/my_colors.dart';
import 'package:flutter/material.dart';

class CustomFilterSearchIcon extends StatelessWidget {
  const CustomFilterSearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: MyColors.light.white,
        borderRadius: BorderRadius.circular(10.67),
        border: Border.all(
          color: MyColors.light.stroke,
        ),
      ),
      child: IconButton(
        onPressed: () {
          print('Filter button pressed');
        },
        icon: Icon(
          Icons.tune,
          color: MyColors.light.textSecondary,
          size: 24,
        ),
      ),
    );
  }
}
