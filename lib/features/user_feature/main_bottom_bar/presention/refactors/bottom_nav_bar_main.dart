import 'package:car_app_new/core/common/animations/animation_do.dart';
import 'package:car_app_new/core/enums/bottom_nav_enums.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/core/styles/app_images.dart';
import 'package:car_app_new/features/user_feature/main_bottom_bar/presention/manger/bottom_nav_cubit.dart';
import 'package:car_app_new/features/user_feature/main_bottom_bar/presention/manger/bottom_nav_state.dart';
import 'package:car_app_new/features/user_feature/main_bottom_bar/presention/widgets/icon_tap_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainBottomNavBar extends StatelessWidget {
  const MainBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInUp(
      duration: 800,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            color: context.color.button,
            borderRadius: BorderRadius.circular(32),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: BlocBuilder<BottomNavCubit, BottomNavState>(
                builder: (context, state) {
                  final cubit = context.read<BottomNavCubit>();
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconTapNavBar(
                        icon: AppImages.homeIcon,
                        isSelected: cubit.navBarEnum == NavBarEnum.home,
                        onTap: () => cubit.selectedNavBarIcons(NavBarEnum.home),
                      ),
                      IconTapNavBar(
                        icon: AppImages.searchIcon,
                        isSelected: cubit.navBarEnum == NavBarEnum.search,
                        onTap: () =>
                            cubit.selectedNavBarIcons(NavBarEnum.search),
                      ),
                      IconTapNavBar(
                        icon: AppImages.inboxIcon,
                        isSelected: cubit.navBarEnum == NavBarEnum.inbox,
                        onTap: () =>
                            cubit.selectedNavBarIcons(NavBarEnum.inbox),
                      ),
                      IconTapNavBar(
                        icon: AppImages.notificationIcon,
                        isSelected: 
                        cubit.navBarEnum == NavBarEnum.notification,
                        onTap: () =>
                            cubit.selectedNavBarIcons(NavBarEnum.notification),
                      ),
                      IconTapNavBar(
                        icon: AppImages.profileIcon,
                        isSelected: cubit.navBarEnum == NavBarEnum.profile,
                        onTap: () =>
                            cubit.selectedNavBarIcons(NavBarEnum.profile),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
