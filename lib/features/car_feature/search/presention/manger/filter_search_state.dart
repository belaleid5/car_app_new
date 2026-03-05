// filter_search_state.dart
import 'package:car_app_new/core/common/model/cars_model.dart';
import 'package:car_app_new/features/car_feature/search/data/models/cars_filter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_search_state.freezed.dart';

@freezed
sealed class FilterSearchState with _$FilterSearchState {
  const factory FilterSearchState.initial({required CarsFilter filter}) =
      _Initial;
  const factory FilterSearchState.loading({required CarsFilter filter}) =
      _Loading;
  const factory FilterSearchState.success({
    required List<CarsModel> cars,
    required CarsFilter filter,
    int? currentPage,
    int? lastPage,
    int? total,
    @Default(false) bool hasMore,
  }) = _Success;
  const factory FilterSearchState.error({
    required String message,
    required CarsFilter filter,
    List<CarsModel>? previousCars,
  }) = _Error;
}
