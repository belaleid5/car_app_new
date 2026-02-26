import 'package:car_app_new/core/common/model/cars_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bestcars_state.freezed.dart';

@freezed
class BestCarsState with _$BestCarsState {
  const factory BestCarsState.loading() = _Loading;
  const factory BestCarsState.success({
    required List<CarsModel> cars,
    required bool hasMore,
    required int currentPage,
  }) = _Success;
  const factory BestCarsState.error({required String message}) = _Error;
}