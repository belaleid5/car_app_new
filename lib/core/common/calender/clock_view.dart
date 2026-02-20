import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'analog_clock_interaction.dart';
import 'digital_display.dart';
import 'selection_hint.dart';

class ClockView extends StatefulWidget {
  final TimeOfDay initialTime;
  final ValueChanged<TimeOfDay> onTimeChanged;

  const ClockView({
    super.key,
    required this.initialTime,
    required this.onTimeChanged,
  });

  @override
  State<ClockView> createState() => _ClockViewState();
}

class _ClockViewState extends State<ClockView> {
  late int _hour;
  late int _minute;
  late bool _isAm;
  bool _selectingHour = true;

  @override
  void initState() {
    super.initState();
    _hour = widget.initialTime.hourOfPeriod == 0
        ? 12
        : widget.initialTime.hourOfPeriod;
    _minute = widget.initialTime.minute;
    _isAm = widget.initialTime.period == DayPeriod.am;
  }

  void _emit() {
    final h24 = _isAm
        ? (_hour == 12 ? 0 : _hour)
        : (_hour == 12 ? 12 : _hour + 12);
    widget.onTimeChanged(TimeOfDay(hour: h24, minute: _minute));
  }

  void _onClockInteraction(Offset local, double size) {
    final center = Offset(size / 2, size / 2);
    var angle = math.atan2(
      local.dx - center.dx,
      -(local.dy - center.dy),
    );
    if (angle < 0) angle += 2 * math.pi;

    if (_selectingHour) {
      _handleHourSelection(angle);
    } else {
      _handleMinuteSelection(angle);
    }
    _emit();
  }

  void _handleHourSelection(double angle) {
    final raw = (angle / (2 * math.pi) * 12).round();
    setState(() => _hour = raw == 0 ? 12 : raw);
    Future.delayed(const Duration(milliseconds: 250), () {
      if (mounted) setState(() => _selectingHour = false);
    });
  }

  void _handleMinuteSelection(double angle) {
    final raw = (angle / (2 * math.pi) * 60).round() % 60;
    setState(() => _minute = (raw / 5).round() * 5 % 60);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 12),
      child: Column(
        children: [
          DigitalDisplay(
            hour: _hour,
            minute: _minute,
            isAm: _isAm,
            selectingHour: _selectingHour,
            onHourTap:   () => setState(() => _selectingHour = true),
            onMinuteTap: () => setState(() => _selectingHour = false),
            onAmTap: () { setState(() => _isAm = true);  _emit(); },
            onPmTap: () { setState(() => _isAm = false); _emit(); },
          ),
          const SizedBox(height: 14),
          AnalogClockInteraction(
            hour: _hour,
            minute: _minute,
            selectingHour: _selectingHour,
            onInteraction: _onClockInteraction,
          ),
          const SizedBox(height: 6),
          SelectionHint(selectingHour: _selectingHour),
        ],
      ),
    );
  }
}