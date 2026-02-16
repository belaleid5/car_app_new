import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/routes/routes_names.dart';
import 'package:flutter/material.dart';


class WidgetForgetPassword extends StatelessWidget {
  const WidgetForgetPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushReplacementNamed(AppRoutesNames.forgetPasswordRoute);
      },
      child: Text(
        'forget Password',
        style: context.textStyle.copyWith(
          fontSize:20 ,
        ),
      ),
    );
  }
}
