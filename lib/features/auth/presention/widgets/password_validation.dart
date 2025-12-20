import 'package:car_app_new/core/styles/theme/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidations extends StatelessWidget {

  const PasswordValidations({
    required this.hasLowerCase, required this.hasUpperCase, required this.hasSpecialCharacter, required this.hasNumber, required this.hasMinLength, super.key,
  });
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacter;
  final bool hasNumber;
  final bool hasMinLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildValidationRow(
          context,
          'At least 1 lowercase letter',
          hasLowerCase,
        ),
        SizedBox(height: 2.h),
        _buildValidationRow(
          context,
          'At least 1 uppercase letter',
          hasUpperCase,
        ),
        SizedBox(height: 2.h),
        _buildValidationRow(
          context,
          'At least 1 special character',
          hasSpecialCharacter,
        ),
        SizedBox(height: 2.h),
        _buildValidationRow(
          context,
          'At least 1 number',
          hasNumber,
        ),
        SizedBox(height: 2.h),
        _buildValidationRow(
          context,
          'At least 8 characters long',
          hasMinLength,
        ),
      ],
    );
  }

  Widget _buildValidationRow(
    BuildContext context,
    String text,
    bool hasValidated,
  ) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5,
          backgroundColor: context.colors.textSecondary,
        ),
        SizedBox(width: 6.w),
        Text(
          text,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            fontSize: 13.sp,
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated 
                ? context.colors.textSecondary 
                : context.colors.textPrimary,
          ),
        ),
      ],
    );
  }
}
