import 'package:car_app_new/core/common/calender/manth_nav.dart';
import 'package:flutter/material.dart';
import 'day_cell.dart';

import 'week_day_header.dart';

class CalendarView extends StatefulWidget {
  final DateTime selectedDate;
  final ValueChanged<DateTime> onDateSelected;

  const CalendarView({
    super.key,
    required this.selectedDate,
    required this.onDateSelected,
  });

  @override
  State<CalendarView> createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView> {
  late DateTime _displayMonth;

  static const _weekLabels = ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'];

  static const _fullMonths = [
    'January', 'February', 'March',    'April',
    'May',     'June',     'July',     'August',
    'September','October', 'November', 'December',
  ];

  @override
  void initState() {
    super.initState();
    _displayMonth = DateTime(
      widget.selectedDate.year,
      widget.selectedDate.month,
    );
  }

  int get _daysInMonth =>
      DateUtils.getDaysInMonth(_displayMonth.year, _displayMonth.month);

  int get _startOffset =>
      DateTime(_displayMonth.year, _displayMonth.month, 1).weekday % 7;

  int get _rowCount => ((_startOffset + _daysInMonth) / 7).ceil();

  String get _monthLabel =>
      '${_fullMonths[_displayMonth.month - 1]} ${_displayMonth.year}';

  void _goToPreviousMonth() => setState(
        () => _displayMonth =
            DateTime(_displayMonth.year, _displayMonth.month - 1),
      );

  void _goToNextMonth() => setState(
        () => _displayMonth =
            DateTime(_displayMonth.year, _displayMonth.month + 1),
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 4, 12, 12),
      child: Column(
        children: [
          MonthNavigator(
            label: _monthLabel,
            onPrevious: _goToPreviousMonth,
            onNext: _goToNextMonth,
          ),
          WeekDayHeader(labels: _weekLabels),
          const SizedBox(height: 4),
          ..._buildWeekRows(),
        ],
      ),
    );
  }

  List<Widget> _buildWeekRows() {
    return List.generate(
      _rowCount,
      (row) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(7, (col) => _buildDayCell(row, col)),
      ),
    );
  }

  Widget _buildDayCell(int row, int col) {
    final day = row * 7 + col - _startOffset + 1;
    if (day < 1 || day > _daysInMonth) {
      return const SizedBox(width: 34, height: 34);
    }
    final date = DateTime(_displayMonth.year, _displayMonth.month, day);
    final isSelected = DateUtils.isSameDay(date, widget.selectedDate);
    final isToday = DateUtils.isSameDay(date, DateTime.now());

    return DayCell(
      day: day,
      isSelected: isSelected,
      isToday: isToday,
      onTap: () => widget.onDateSelected(date),
    );
  }
}