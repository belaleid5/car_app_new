import 'package:flutter/material.dart';
import 'tab_pill.dart';

enum ActiveView { calendar, clock }

class DialogTabBar extends StatelessWidget {
  final String dateLabel;
  final String timeLabel;
  final ActiveView activeView;
  final VoidCallback onCalendarTap;
  final VoidCallback onClockTap;

  const DialogTabBar({
    super.key,
    required this.dateLabel,
    required this.timeLabel,
    required this.activeView,
    required this.onCalendarTap,
    required this.onClockTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: const Color(0xFFF2F2F2),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          children: [
            TabPill(
              icon: Icons.calendar_today_rounded,
              label: dateLabel,
              isActive: activeView == ActiveView.calendar,
              onTap: onCalendarTap,
            ),
            const SizedBox(width: 6),
            TabPill(
              icon: Icons.access_time_rounded,
              label: timeLabel,
              isActive: activeView == ActiveView.clock,
              onTap: onClockTap,
            ),
          ],
        ),
      ),
    );
  }
}