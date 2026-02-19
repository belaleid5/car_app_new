
import 'package:car_app_new/core/common/animations/animation_do.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/language/lang_keys.dart';
import 'package:car_app_new/core/styles/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainCustomerAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const MainCustomerAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: context.color.button,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomFadeInRight(
            duration: 800,
            child: Text(
              context.translate(LangKeys.chooseProducts),
              style: context.textStyle.copyWith(
                fontSize: 20,
                color: context.color.textPrimary,
              ),
            ),
          ),
          CustomFadeInLeft(
            duration: 800,
            child: Center(
              child: SvgPicture.asset(AppImages.searchIcon),
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 70);
}