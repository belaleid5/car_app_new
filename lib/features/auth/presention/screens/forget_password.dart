import 'package:car_app_new/core/common/widgets/secction_logo_and_title_qent.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/features/auth/presention/refcator/forget_password_body.dart';
import 'package:flutter/material.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.background,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: context.color.background,
        title: const SectionLogoAndTitleQent(),
      ),
      body: const ForgetPasswordBody(),
    );
  }
}
