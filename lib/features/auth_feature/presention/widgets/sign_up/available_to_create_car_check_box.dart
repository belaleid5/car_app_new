import 'package:car_app_new/core/common/calender/birth_date_field.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/features/auth_feature/presention/manger/bloc_register/register_bloc.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/sign_up/national_id_form_field.dart';
import 'package:flutter/material.dart';

class AvailableToCreateCarCheckbox extends StatefulWidget {
  const AvailableToCreateCarCheckbox({super.key, required this.registerBloc});

  final RegisterBloc registerBloc;

  @override
  State<AvailableToCreateCarCheckbox> createState() =>
      _AvailableToCreateCarCheckboxState();
}

class _AvailableToCreateCarCheckboxState
    extends State<AvailableToCreateCarCheckbox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    final registerBloc = widget.registerBloc;

    return Column(
      children: [
        CheckboxListTile(
          title: Text(
            'Available to create car',
            style: context.textStyle.copyWith(fontSize: 16),
          ),
          value: _isChecked,
          onChanged: (value) {
            setState(() {
              _isChecked = value ?? false;
              registerBloc.toggleAvailableToCreateCar(_isChecked);
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
          contentPadding: EdgeInsets.zero,
        ),

        if (_isChecked) ...[
          NationalIdFieldForm(controller: registerBloc.nationalIdController),
          const SizedBox(height: 8),
          BirthDateField(
            onDateChanged: registerBloc.setBirthDate,
            onTimeChanged: registerBloc.setBirthTime,
            validator: (date, time) => date == null ? 'Required' : null,
          ),
        ],
      ],
    );
  }
}
