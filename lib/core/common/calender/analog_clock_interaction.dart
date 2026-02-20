import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'clock_painter.dart';

class AnalogClockInteraction extends StatelessWidget {
  final int hour;
  final int minute;
  final bool selectingHour;
  final void Function(Offset local, double size) onInteraction;

  const AnalogClockInteraction({
    super.key,
    required this.hour,
    required this.minute,
    required this.selectingHour,
    required this.onInteraction,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        final size = math.min(constraints.maxWidth * 0.82, 210.0);
        return GestureDetector(
          onTapDown:   (d) => onInteraction(d.localPosition, size),
          onPanUpdate: (d) => onInteraction(d.localPosition, size),
          child: RepaintBoundary(
            child: CustomPaint(
              size: Size(size, size),
              painter: ClockPainter(
                hour: hour,
                minute: minute,
                selectingHour: selectingHour,
              ),
            ),
          ),
        );
      },
    );
  }
}