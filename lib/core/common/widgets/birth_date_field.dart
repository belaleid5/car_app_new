import 'package:car_app_new/core/common/calender/birth_date_dialog.dart';
import 'package:car_app_new/core/common/widgets/adabtive_text_form_field.dart';
import 'package:flutter/material.dart';

class BirthDateField extends StatefulWidget {
  final ValueChanged<DateTime>? onDateChanged;
  final ValueChanged<TimeOfDay>? onTimeChanged;
  final String? Function(DateTime? date, TimeOfDay? time)? validator;
  final DateTime? initialDate;
  final TimeOfDay? initialTime;

  const BirthDateField({
    super.key,
    this.onDateChanged,
    this.onTimeChanged,
    this.validator,
    this.initialDate,
    this.initialTime,
  });

  @override
  State<BirthDateField> createState() => _BirthDateFieldState();
}

class _BirthDateFieldState extends State<BirthDateField> {
  DateTime? _date;
  TimeOfDay? _time;

  final TextEditingController _controller = TextEditingController();

  static const _shortMonths = [
    'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec',
  ];

  DateTime get _effectiveDate =>
      widget.initialDate ?? DateTime(1995, 6, 15);

  TimeOfDay get _effectiveTime =>
      widget.initialTime ?? const TimeOfDay(hour: 10, minute: 0);

  String get _displayText {
    if (_date == null) return '';
    final dateStr =
        '${_date!.day} ${_shortMonths[_date!.month - 1]} ${_date!.year}';
    if (_time == null) return dateStr;
    final h = _time!.hourOfPeriod == 0 ? 12 : _time!.hourOfPeriod;
    final m = _time!.minute.toString().padLeft(2, '0');
    final p = _time!.period == DayPeriod.am ? 'AM' : 'PM';
    return '$dateStr  •  $h:$m $p';
  }

  Future<void> _openPicker() async {
    final result = await BirthDateDialog.show(
      context,
      initialDate: _date ?? _effectiveDate,
      initialTime: _time ?? _effectiveTime,
    );
    if (result == null) return;

    setState(() {
      _date = result.date;
      _time = result.time;
      _controller.text = _displayText;
    });

    widget.onDateChanged?.call(result.date);
    widget.onTimeChanged?.call(result.time);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveInputField(
      context: context,
      controller: _controller,
      readOnly: true,
      onTap: _openPicker,
      hintText: 'Select birth date & time',
      prefix: const Icon(Icons.cake_outlined, size: 20),
      suffix: const Icon(Icons.chevron_right, size: 20),
      validate: (_) => widget.validator?.call(_date, _time),
    );
  }
}