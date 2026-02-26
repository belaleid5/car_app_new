import 'dart:math' as math;
import 'package:flutter/material.dart';

class ClockPainter extends CustomPainter {
  final int hour;
  final int minute;
  final bool selectingHour;

  const ClockPainter({
    required this.hour,
    required this.minute,
    required this.selectingHour,
  });

  static final _majorTickPaint = Paint()
    ..color = Colors.black45
    ..strokeWidth = 1.5
    ..strokeCap = StrokeCap.round;

  static final _minorTickPaint = Paint()
    ..color = Colors.black12
    ..strokeWidth = 0.8
    ..strokeCap = StrokeCap.round;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - 6;

    _drawFace(canvas, center, radius);
    _drawTicks(canvas, center, radius);
    _drawNumbers(canvas, center, radius);
    _drawGlow(canvas, center, radius);
    _drawHourHand(canvas, center, radius);
    _drawMinuteHand(canvas, center, radius);
    _drawCenter(canvas, center);
  }

  void _drawFace(Canvas canvas, Offset c, double r) {
    canvas.drawCircle(c, r, Paint()..color = const Color(0xFFF3F3F3));
    canvas.drawCircle(c, r,
        Paint()
          ..color = Colors.black12
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1.2);
  }

  void _drawTicks(Canvas canvas, Offset c, double r) {
    for (int i = 0; i < 60; i++) {
      final a = (i / 60) * 2 * math.pi - math.pi / 2;
      final isMajor = i % 5 == 0;
      final outerR = r - 2;
      final innerR = r - (isMajor ? 11 : 6);
      canvas.drawLine(
        Offset(c.dx + outerR * math.cos(a), c.dy + outerR * math.sin(a)),
        Offset(c.dx + innerR * math.cos(a), c.dy + innerR * math.sin(a)),
        isMajor ? _majorTickPaint : _minorTickPaint,
      );
    }
  }

  void _drawNumbers(Canvas canvas, Offset c, double r) {
    final tp = TextPainter(textDirection: TextDirection.ltr);
    for (int i = 1; i <= 12; i++) {
      final a = (i / 12) * 2 * math.pi - math.pi / 2;
      tp.text = TextSpan(
        text: '$i',
        style: TextStyle(
          fontSize: 12,
          color: Colors.black87,
          fontWeight: selectingHour && hour == i
              ? FontWeight.bold
              : FontWeight.normal,
        ),
      );
      tp.layout();
      final pos = Offset(
        c.dx + (r - 26) * math.cos(a),
        c.dy + (r - 26) * math.sin(a),
      );
      tp.paint(canvas, pos - Offset(tp.width / 2, tp.height / 2));
    }
  }

  void _drawGlow(Canvas canvas, Offset c, double r) {
    final a = selectingHour
        ? (hour / 12) * 2 * math.pi - math.pi / 2
        : (minute / 60) * 2 * math.pi - math.pi / 2;
    final glowR = selectingHour ? r * 0.54 : r * 0.66;
    canvas.drawLine(
      c,
      Offset(c.dx + glowR * math.cos(a), c.dy + glowR * math.sin(a)),
      Paint()
        ..color = Colors.black.withOpacity(0.09)
        ..strokeWidth = 28
        ..strokeCap = StrokeCap.round,
    );
  }

  void _drawHourHand(Canvas canvas, Offset c, double r) {
    final a = (hour / 12) * 2 * math.pi - math.pi / 2;
    canvas.drawLine(
      c,
      Offset(c.dx + r * 0.54 * math.cos(a), c.dy + r * 0.54 * math.sin(a)),
      Paint()
        ..color = Colors.black87
        ..strokeWidth = 4.5
        ..strokeCap = StrokeCap.round,
    );
  }

  void _drawMinuteHand(Canvas canvas, Offset c, double r) {
    final a = (minute / 60) * 2 * math.pi - math.pi / 2;
    canvas.drawLine(
      c,
      Offset(c.dx + r * 0.68 * math.cos(a), c.dy + r * 0.68 * math.sin(a)),
      Paint()
        ..color = Colors.black54
        ..strokeWidth = 2.5
        ..strokeCap = StrokeCap.round,
    );
    canvas.drawLine(
      c,
      Offset(
        c.dx + r * 0.18 * math.cos(a + math.pi),
        c.dy + r * 0.18 * math.sin(a + math.pi),
      ),
      Paint()
        ..color = Colors.redAccent
        ..strokeWidth = 2.2
        ..strokeCap = StrokeCap.round,
    );
  }

  void _drawCenter(Canvas canvas, Offset c) {
    canvas.drawCircle(c, 6, Paint()..color = Colors.black87);
    canvas.drawCircle(c, 3, Paint()..color = Colors.white);
  }

  @override
  bool shouldRepaint(ClockPainter old) =>
      old.hour != hour ||
      old.minute != minute ||
      old.selectingHour != selectingHour;
}