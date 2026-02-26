import 'package:car_app_new/core/app/theme/my_colors.dart';
import 'package:car_app_new/core/common/widgets/circle_user_image.dart';
import 'package:car_app_new/core/common/widgets/custom_circular_icon.dart';
import 'package:car_app_new/core/common/widgets/custom_image.dart';
import 'package:car_app_new/core/common/widgets/name_user.dart';
import 'package:car_app_new/core/styles/app_images.dart';
import 'package:car_app_new/features/car_feature/details/presention/manger/bloc/cars_details_bloc.dart';
import 'package:car_app_new/features/car_feature/details/presention/manger/bloc/cars_details_states.dart';
import 'package:car_app_new/features/car_feature/details/presention/widgets/shimmer_details_car/shimmer_inforamtion_owner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InformationOwner extends StatelessWidget {
  const InformationOwner({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarDetailsBloc, CarDetailsState>(
      builder: (context, state) {
        return state.when(
          loading: () => const ShimmerInformationOwner(),
          initial: () => const ShimmerInformationOwner(),
          error: (message) => const SizedBox(),
          success: (car) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: ColoredBox(
              color: context.colors.white,
              child: Row(
                spacing: 8,
                children: [
                  const CircleUserImage(),
                  NameUser(name: car.owner.fullName),

                  const CustomImage(
                    imageType: ImagesType.svg,
                    imagePath: AppImages.verifyUserIcon,
                    height: 16,
                    width: 16,
                  ),
                  const Spacer(),
                  const CustomCircularIcon(iconPath: AppImages.callIcon),

                  const CustomCircularIcon(iconPath: AppImages.messageIcon),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
