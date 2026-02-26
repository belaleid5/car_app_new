import 'package:car_app_new/core/di/di.dart';
import 'package:car_app_new/core/enums/bottom_nav_enums.dart';
import 'package:car_app_new/core/extensions/context_extensions.dart';
import 'package:car_app_new/features/car_feature/home/presention/refactor/home_page_body.dart';
import 'package:car_app_new/features/user_feature/inpox/presention/pages/inpox.dart';
import 'package:car_app_new/features/user_feature/main_bottom_bar/presention/manger/bottom_nav_cubit.dart';
import 'package:car_app_new/features/user_feature/main_bottom_bar/presention/manger/bottom_nav_state.dart';
import 'package:car_app_new/features/user_feature/main_bottom_bar/presention/refactors/bottom_nav_bar_main.dart';
import 'package:car_app_new/features/user_feature/notifications/presention/pages/notifications.dart';
import 'package:car_app_new/features/user_feature/profile/presention/pages/profile.dart';
import 'package:car_app_new/features/car_feature/search/presention/pages/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainBottomBarScreen extends StatelessWidget {
  const MainBottomBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<BottomNavCubit>(),
      child: Scaffold(
        backgroundColor: context.color.white,
        body: Stack(
          children: [
            Positioned.fill(
              child: BlocBuilder<BottomNavCubit, BottomNavState>(
                builder: (context, state) {
                  final cubit = context.read<BottomNavCubit>();
                  if (cubit.navBarEnum == NavBarEnum.search) {
                    return const SearchPage();
                  }
                  if (cubit.navBarEnum == NavBarEnum.notification) {
                    return const NotificationsPage();
                  }
                  if (cubit.navBarEnum == NavBarEnum.profile) {
                    return const ProfilePage();
                  }
                  if (cubit.navBarEnum == NavBarEnum.inbox) {
                    return const InboxPage();
                  }
                  return const HomePageBody();
                },
              ),
            ),
            const Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: MainBottomNavBar(),
            ),
          ],
        ),
      ),
    );
  }
}
