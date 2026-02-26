import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class NameDetailsCar extends StatelessWidget {
  const NameDetailsCar({
    super.key,
    required this.nameCar,
  });
  final String nameCar;
  @override
  Widget build(BuildContext context) {
    return Text(
      nameCar,
      style: context.textStyle.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}