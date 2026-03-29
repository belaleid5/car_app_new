import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class CustomButtonBookNow extends StatefulWidget {
  const CustomButtonBookNow({super.key});

  @override
  State<CustomButtonBookNow> createState() => _CustomButtonBookNowState();
}

class _CustomButtonBookNowState extends State<CustomButtonBookNow> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: context.color.primary,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: () {},
      child: Text(
        'Book Now',
        style: context.textStyle.copyWith(
          fontSize: 12,
          color: context.color.white,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}