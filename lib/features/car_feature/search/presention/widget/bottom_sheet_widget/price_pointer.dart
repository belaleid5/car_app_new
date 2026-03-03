import 'package:flutter/material.dart';

class PricePointer extends CustomPainter {
  const PricePointer({
    required this.activeStart,
    required this.activeEnd,
    required this.activeColor,
    required this.inactiveColor,
  });

  final double activeStart;
  final double activeEnd;
  final Color activeColor;
  final Color inactiveColor;


  static const _heights = <double>[
    3.24, 3.24, 8.92, 2.43, 4.86, 3.24, 11.35, 4.05, 10.54, 7.30,
    17.84, 8.92, 29.19, 21.08, 15.41, 25.14, 37.30, 29.19, 16.22, 8.92,
    48.65, // ✅ الأطول (Rectangle 350)
    34.87, 17.03, 25.95, 17.84, 37.30, 16.22, 19.46, 24.32, 9.73, 17.03,
    5.68, 17.03, 8.92, 10.54, 8.11, 8.92, 4.86, 6.49, 2.43, 13.78, 5.68,
  ];

  static const _maxHeight = 48.65;

  @override
  void paint(Canvas canvas, Size size) {
    const barWidth = 6.49;
    const spacing = 1.3;

    final activePaint = Paint()..color = activeColor;
    final inactivePaint = Paint()..color = inactiveColor;

    var dx = 0.0;
    for (var i = 0; i < _heights.length; i++) {
      final normalizedHeight = (_heights[i] / _maxHeight) * size.height;
      final rect = Rect.fromLTWH(
        dx,
        size.height - normalizedHeight,
        barWidth,
        normalizedHeight,
      );

      final position = i / (_heights.length - 1);
      final isActive = position >= activeStart && position <= activeEnd;

      canvas.drawRRect(
        RRect.fromRectAndRadius(rect, const Radius.circular(1)),
        isActive ? activePaint : inactivePaint,
      );
      dx += barWidth + spacing;
    }
  }

  @override
  bool shouldRepaint(PricePointer old) =>
      old.activeStart != activeStart ||
      old.activeEnd != activeEnd ||
      old.activeColor != activeColor;
}