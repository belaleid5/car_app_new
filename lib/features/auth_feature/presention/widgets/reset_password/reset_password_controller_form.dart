// في reset_password_form_controller.dart
import 'package:flutter/material.dart';

class ResetPasswordFormController {
  final formKey = GlobalKey<FormState>();
  final codeController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  String resetToken = ''; 

  void dispose() {
    codeController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }
}
