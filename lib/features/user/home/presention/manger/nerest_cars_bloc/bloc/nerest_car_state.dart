

import 'package:car_app_new/features/user/home/data/models/car_nerst_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'nerest_car_state.freezed.dart';

@freezed
class NerestCarsState with _$NerestCarsState {
  const factory NerestCarsState.initial() = _Initial;

  const factory NerestCarsState.loading({
    @Default([]) List<CarNerstModel> cars,
    @Default(true) bool hasMore,
  }) = _Loading;

  const factory NerestCarsState.success({
    required List<CarNerstModel> cars,
    required bool hasMore,
  }) = _Success;

  const factory NerestCarsState.error({
    required String message,
    @Default([]) List<CarNerstModel> cars,
    @Default(true) bool hasMore,
  }) = _Error;
}
