// search_filter.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_filter.freezed.dart';

@freezed
sealed class SearchFilter with _$SearchFilter {
  const factory SearchFilter({
    String? nameCar,
    int? brandId,
    String? carType,
    String? typePayment,
    int? colorId,
    int? locationId,
    int? seatingCapacity,
    String? fuelType,
  }) = _SearchFilter;
}