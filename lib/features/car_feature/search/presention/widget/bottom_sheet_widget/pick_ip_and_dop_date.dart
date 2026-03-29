import 'package:car_app_new/core/common/calender/birth_date_dialog.dart';
import 'package:car_app_new/core/common/widgets/custom_image.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/styles/app_images.dart';
import 'package:flutter/material.dart';

class PickUpAndDropDate extends StatefulWidget {
  const PickUpAndDropDate({super.key});

  @override
  State<PickUpAndDropDate> createState() => _PickUpAndDropDateState();
}

class _PickUpAndDropDateState extends State<PickUpAndDropDate> {
  DateTime? _date;
  TimeOfDay? _time;

  Future<void> _openPicker() async {
    final result = await BirthDateDialog.show(
      context,
      initialDate: _date ?? DateTime.now(),
      initialTime: _time ?? TimeOfDay.now(),
    );
    if (result == null) return;

    setState(() {
      _date = result.date;
      _time = result.time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: GestureDetector(
        onTap: _openPicker,
        child: Row(
          spacing: 5,
          children: [
            Text(
              'Pick up and Drop Date',
              style: context.textStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            const CustomImage(
              imageType: ImagesType.svg,
              imagePath: AppImages.calendarIcon,
            ),
            if(_date !=null)
              Text(
                '${_date!.day},${_date!.month},${_date!.year}',
                style: context.textStyle.copyWith(fontSize: 14),
              ),

            const Icon(
              Icons.keyboard_arrow_down,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}