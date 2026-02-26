
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class NameUser extends StatelessWidget {
  const NameUser({
    super.key,
    required this.name,
  });
  final String name;
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: context.textStyle.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}