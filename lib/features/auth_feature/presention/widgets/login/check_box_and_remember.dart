import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/features/auth_feature/presention/manger/bloc_login/login_bloc.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/login/check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CustomCheckBoxAndRemember extends StatefulWidget {
  const CustomCheckBoxAndRemember({super.key});

  @override
  State<CustomCheckBoxAndRemember> createState() => _CustomCheckBoxAndRememberState();
}

class _CustomCheckBoxAndRememberState extends State<CustomCheckBoxAndRemember> {
  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    final loginBloc = context.read<LoginBloc>();
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomCheckBox(
              initialValue: loginBloc.rememberMe,
              onChanged: (value) {
                setState(() {
                  loginBloc.toggleRememberMe(value);
                  errorMessage = loginBloc.rememberMeError;
                });
              },
            ),
            Text(
              'Remember Me',
              style: context.textStyle.copyWith(
                fontSize: 18,
              ),
            ),
            Text(
              ' *',
              style: TextStyle(
                color: Colors.red,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        if (errorMessage != null)
          Padding(
            padding: EdgeInsets.only(top: 5, left:5 ),
            child: Text(
              errorMessage!,
              style: TextStyle(
                color: Colors.red,
                fontSize:12,
              ),
            ),
          ),
      ],
    );
  }
}
