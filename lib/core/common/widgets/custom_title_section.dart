import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class CstomTitleSection extends StatelessWidget {
  const CstomTitleSection({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: context.textStyle.copyWith(
        fontSize: 16,
      ),
    );
  }
}