import 'package:car_app_new/features/car_feature/details/data/models/car_details_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cars_details_states.freezed.dart';

@freezed
sealed class CarDetailsState with _$CarDetailsState {
  const factory CarDetailsState.initial() = _Initial;
  const factory CarDetailsState.loading() = _Loading;
  const factory CarDetailsState.success(CarDetailsModel car) = _Success;
  const factory CarDetailsState.error(String message) = _Error;
}