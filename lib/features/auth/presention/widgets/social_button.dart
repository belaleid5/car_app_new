import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class CustomButtonSocial extends StatelessWidget {
  const CustomButtonSocial({
    required this.titleButton,
    required this.iconPath,
    super.key,
  });

  final String titleButton;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: context.color.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(iconPath),
          horizontalSpace(5),
          Text(
            titleButton,
            style: TextStyle(
              color: context.color.black,
              fontSize:20 ,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
