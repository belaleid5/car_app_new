import 'package:car_app_new/core/app/theme/my_colors.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class DescriptionTitle extends StatelessWidget {
  const DescriptionTitle({
    super.key,
    required this.des,
  });
  final String des;
  @override
  Widget build(BuildContext context) {
    return Text(
      des,
      softWrap: true,
      style: context.textStyle.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: context.colors.textSecondary,
      ),
    );
  }
}
