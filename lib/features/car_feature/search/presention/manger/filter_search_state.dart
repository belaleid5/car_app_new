// filter_search_state.dart
import 'package:car_app_new/core/common/model/cars_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_search_state.freezed.dart';

@freezed
sealed class FilterSearchState with _$FilterSearchState {
  const factory FilterSearchState.initial() = _Initial;

  const factory FilterSearchState.loading() = _Loading;
  const factory FilterSearchState.loadingMore({
    required List<CarsModel> cars,
  }) = _LoadingMore;
  const factory FilterSearchState.success({
    required List<CarsModel> cars,
    required int currentPage,
    required int lastPage,
    required int total,
    @Default(false) bool hasMore,
  }) = _Success;

  const factory FilterSearchState.empty() = _Empty;

  const factory FilterSearchState.error({
    required String message,
    List<CarsModel>? previousCars,
  }) = _Error;
}