import 'package:car_app_new/core/common/widgets/section_logo_and_title_qent.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/helper/spacing.dart';
import 'package:car_app_new/features/car/home/presention/widgets/circle_user_image.dart';
import 'package:car_app_new/features/car/home/presention/widgets/notification_home_widget.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: context.color.background,
      leadingWidth: 150,
      leading: const SectionLogoAndTitleQent(),
      actions: [
        const NotificationWidgetHomeIcon(),
        horizontalSpace(10),
        const CircleUserImage(),
      ],
    );
  }
}
