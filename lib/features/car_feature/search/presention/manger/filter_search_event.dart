// filter_search_event.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_search_event.freezed.dart';

@freezed
sealed class FilterSearchEvent with _$FilterSearchEvent {
  const factory FilterSearchEvent.search({
    String? nameCar,
    int? brandId,
    String? carType,
    String? typePayment,
    int? colorId,
    int? locationId,
    int? seatingCapacity,
    String? fuelType,
  }) = _Search;

  const factory FilterSearchEvent.loadMore() = _LoadMore;

  const factory FilterSearchEvent.reset() = _Reset;
}