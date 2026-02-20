import 'package:flutter/material.dart';
import 'calendar_view.dart';
import 'clock_view.dart';
import 'dialog_tab_bar.dart';

class DialogContent extends StatelessWidget {
  final ActiveView activeView;
  final DateTime selectedDate;
  final TimeOfDay selectedTime;
  final ValueChanged<DateTime> onDateSelected;
  final ValueChanged<TimeOfDay> onTimeChanged;

  const DialogContent({
    super.key,
    required this.activeView,
    required this.selectedDate,
    required this.selectedTime,
    required this.onDateSelected,
    required this.onTimeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 260),
      transitionBuilder: (child, animation) => FadeTransition(
        opacity: animation,
        child: SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 0.05),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        ),
      ),
      child: activeView == ActiveView.calendar
          ? CalendarView(
              key: const ValueKey(ActiveView.calendar),
              selectedDate: selectedDate,
              onDateSelected: onDateSelected,
            )
          : ClockView(
              key: const ValueKey(ActiveView.clock),
              initialTime: selectedTime,
              onTimeChanged: onTimeChanged,
            ),
    );
  }
}