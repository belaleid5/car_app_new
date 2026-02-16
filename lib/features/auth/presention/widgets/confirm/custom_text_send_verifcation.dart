import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';


class CustomSubTitleTextAuth extends StatelessWidget {
  const CustomSubTitleTextAuth({super.key, required this.subTitle});

  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        subTitle,
        style: context.textStyle.copyWith(
          fontSize: 20,
          color: context.color.textSecondary,
        ),
      ),
    );
  }
}
