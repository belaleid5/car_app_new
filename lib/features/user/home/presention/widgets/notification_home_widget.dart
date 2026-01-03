import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/styles/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationWidgetHomeIcon extends StatelessWidget {
  const NotificationWidgetHomeIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Badge.count(
      count: 2,
      backgroundColor: context.color.icon,

      child: Container(
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: context.color.stroke,
        ),
        child: CircleAvatar(
          backgroundColor: context.color.background,
          child: SvgPicture.asset(AppImages.notificationIcon),
        ),
      ),
    );
  }
}
