import 'package:car_app_new/core/common/widgets/section_logo_and_title_qent.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/features/auth/presention/widgets/reset_password/section_confirm_password.dart';
import 'package:flutter/material.dart';

class ResetPasswordBody extends StatelessWidget {
  const ResetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          automaticallyImplyLeading: false,
          backgroundColor: context.color.background,
          title: const SectionLogoAndTitleQent(),
        ),
        const SliverFillRemaining(
          hasScrollBody: false,
          child: SectionConfirmPassword(),
        ),
      ],
    );
  }
}
