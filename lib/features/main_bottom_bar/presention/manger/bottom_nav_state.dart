

import 'package:car_app_new/core/enums/bottom_nav_enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'bottom_nav_state.freezed.dart';

@freezed
class BottomNavState with _$BottomNavState {
  const factory BottomNavState.initial() = _Initial;
  const factory BottomNavState.barSeletedIcons({required NavBarEnum navBarEnum}) =
      BarSeletedIconsState;
}