import 'package:car_app_new/core/app/theme/my_colors.dart';
import 'package:car_app_new/core/common/widgets/custom_image.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/styles/app_images.dart';
import 'package:car_app_new/features/auth_feature/presention/widgets/custom_divider.dart';
import 'package:flutter/material.dart';

class CustomCarsDetailsAppBar extends StatelessWidget {
  const CustomCarsDetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      actionsPadding: const EdgeInsets.symmetric(horizontal: 5),
      scrolledUnderElevation: 0,
      backgroundColor: context.colors.background.withOpacity(0.99),
      pinned: true,
      centerTitle: true,
      flexibleSpace: const FlexibleSpaceBar(),
      leading: GestureDetector(
        onTap: () {
          context.pop();
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: context.colors.stroke),
          ),
          child: const CircleAvatar(
            radius: 20,
            backgroundColor: Colors.transparent,
            child: CustomImage(
              borderRadius: 18,
              imagePath: AppImages.backIcon,
              imageType: ImagesType.svg,
            ),
          ),
        ),
      ),

      title: Text(
        'Car Details',
        style: context.textStyle.copyWith(
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
      ),
      actions: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: context.colors.stroke),
          ),
          child: const CircleAvatar(
            radius: 20,
            backgroundColor: Colors.transparent,
            child: CustomImage(
              borderRadius: 18,
              imagePath: AppImages.threeDotIcon,
              imageType: ImagesType.svg,
            ),
          ),
        ),
      ],

      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(1),
        child: CustomDivider(),
      ),
    );
  }
}
