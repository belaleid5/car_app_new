import 'package:flutter/material.dart';

class DigitBox extends StatelessWidget {
  final String value;
  final bool isActive;
  final VoidCallback onTap;

  const DigitBox({
    super.key,
    required this.value,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 66,
        height: 50,
        decoration: BoxDecoration(
          color: isActive ? Colors.black : const Color(0xFFF0F0F0),
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Text(
          value,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: isActive ? Colors.white : Colors.black87,
          ),
        ),
      ),
    );
  }
}