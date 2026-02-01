import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc_register/register_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvailableToCreateCarCheckbox extends StatefulWidget {
  const AvailableToCreateCarCheckbox({super.key, required this.registerBloc});

  final RegisterBloc registerBloc;

  @override
  State<AvailableToCreateCarCheckbox> createState() =>
      _AvailableToCreateCarCheckboxState();
}

class _AvailableToCreateCarCheckboxState
    extends State<AvailableToCreateCarCheckbox> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        'Available to create car',
        style: context.textStyle.copyWith(fontSize: 14.sp),
      ),
      value: widget.registerBloc.availableToCreateCar,
      onChanged: (value) {
        setState(() {
          widget.registerBloc.toggleAvailableToCreateCar(value ?? false);
        });
      },
      controlAffinity: ListTileControlAffinity.leading,
      contentPadding: EdgeInsets.zero,
    );
  }
}
