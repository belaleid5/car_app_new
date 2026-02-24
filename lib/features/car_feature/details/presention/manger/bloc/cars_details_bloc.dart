// car_details_state.dart
import 'package:car_app_new/core/common/model/cars_model.dart';
import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:car_app_new/features/car_feature/details/data/repo/cars_details_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cars_details_event.dart';
part 'cars_details_state.dart';
part 'cars_details_bloc.freezed.dart';



@freezed
class CarDetailsState with _$CarDetailsState {
  const factory CarDetailsState.initial() = _Initial;
  const factory CarDetailsState.loading() = _Loading;
  const factory CarDetailsState.success(CarsModel car) = _Success;
  const factory CarDetailsState.error(String message) = _Error;
}