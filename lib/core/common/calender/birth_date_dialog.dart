import 'package:flutter/material.dart';
import 'dialog_actions.dart';
import 'dialog_content.dart';
import 'dialog_header.dart';
import 'dialog_tab_bar.dart';

class BirthDateDialog extends StatefulWidget {
  final DateTime initialDate;
  final TimeOfDay initialTime;

  const BirthDateDialog({
    super.key,
    required this.initialDate,
    required this.initialTime,
  });

  static Future<({DateTime date, TimeOfDay time})?> show(
    BuildContext context, {
    required DateTime initialDate,
    required TimeOfDay initialTime,
  }) {
    return showDialog<({DateTime date, TimeOfDay time})>(
      context: context,
      barrierColor: Colors.black.withOpacity(0.4),
      builder: (_) => BirthDateDialog(
        initialDate: initialDate,
        initialTime: initialTime,
      ),
    );
  }

  @override
  State<BirthDateDialog> createState() => _BirthDateDialogState();
}

class _BirthDateDialogState extends State<BirthDateDialog> {
  late DateTime _selectedDate;
  late TimeOfDay _selectedTime;
  ActiveView _activeView = ActiveView.calendar;

  static const _shortMonths = [
    'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec',
  ];

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.initialDate;
    _selectedTime = widget.initialTime;
  }

  String get _dateLabel =>
      '${_selectedDate.day} ${_shortMonths[_selectedDate.month - 1]} ${_selectedDate.year}';

  String get _timeLabel {
    final h = _selectedTime.hourOfPeriod == 0 ? 12 : _selectedTime.hourOfPeriod;
    final m = _selectedTime.minute.toString().padLeft(2, '0');
    final p = _selectedTime.period == DayPeriod.am ? 'AM' : 'PM';
    return '$h:$m $p';
  }

  void _onDateSelected(DateTime date) {
    setState(() => _selectedDate = date);
    Future.delayed(const Duration(milliseconds: 280), () {
      if (mounted) setState(() => _activeView = ActiveView.clock);
    });
  }

  void _onTimeChanged(TimeOfDay time) =>
      setState(() => _selectedTime = time);

  void _onConfirm() =>
      Navigator.pop(context, (date: _selectedDate, time: _selectedTime));

  void _onCancel() => Navigator.pop(context);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      backgroundColor: Colors.white,
      insetPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 48),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DialogHeader(onClose: _onCancel),
          const SizedBox(height: 10),
          DialogTabBar(
            dateLabel: _dateLabel,
            timeLabel: _timeLabel,
            activeView: _activeView,
            onCalendarTap: () => setState(() => _activeView = ActiveView.calendar),
            onClockTap:    () => setState(() => _activeView = ActiveView.clock),
          ),
          const SizedBox(height: 8),
          const Divider(height: 1, color: Color(0xFFEEEEEE)),
          DialogContent(
            activeView: _activeView,
            selectedDate: _selectedDate,
            selectedTime: _selectedTime,
            onDateSelected: _onDateSelected,
            onTimeChanged: _onTimeChanged,
          ),
          const Divider(height: 1, color: Color(0xFFEEEEEE)),
          DialogActions(onCancel: _onCancel, onConfirm: _onConfirm),
        ],
      ),
    );
  }
}