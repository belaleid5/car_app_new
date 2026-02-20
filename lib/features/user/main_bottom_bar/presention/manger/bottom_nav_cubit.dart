import 'package:car_app_new/core/enums/bottom_nav_enums.dart';
import 'package:car_app_new/features/user/main_bottom_bar/presention/manger/bottom_nav_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(const BottomNavState.initial());

  NavBarEnum navBarEnum = NavBarEnum.home;

  void selectedNavBarIcons(NavBarEnum viewEnum) {
    if (viewEnum == NavBarEnum.home) {
      navBarEnum = NavBarEnum.home;
    } else if (viewEnum == NavBarEnum.search) {
      navBarEnum = NavBarEnum.search;
    } else if (viewEnum == NavBarEnum.inbox) {
      navBarEnum = NavBarEnum.inbox;
    } else if (viewEnum == NavBarEnum.profile) {
      navBarEnum = NavBarEnum.profile;
    } else if (viewEnum == NavBarEnum.notification) {
      navBarEnum = NavBarEnum.notification;
    }
    emit(BottomNavState.barSeletedIcons(navBarEnum: navBarEnum));
  }
}
