// filter_search_event.dart
import 'package:car_app_new/features/car_feature/search/data/models/cars_filter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_search_event.freezed.dart';



@freezed
sealed class FilterSearchEvent with _$FilterSearchEvent {
  const factory FilterSearchEvent.search({
    String? query,
    int? brandId,
    String? carType,
   
    int? colorId,
    int? locationId,
    int? seatingCapacity,
    String? fuelType,
  }) = _Search;

  const factory FilterSearchEvent.updateQuery(String query) = _UpdateQuery;
  const factory FilterSearchEvent.updateBrand(int brandId) = _UpdateBrand;
  const factory FilterSearchEvent.applyAdvancedFilter(CarsFilter filter) = _ApplyAdvancedFilter;
  const factory FilterSearchEvent.fetch() = _Fetch;
  const factory FilterSearchEvent.setCarType(String? carType) = _SetCarType;
  const factory FilterSearchEvent.setPrice(double? minPrice, double? maxPrice) = _SetPrice;
  const factory FilterSearchEvent.setTypePayment(String? typePayment) = _SetTypePayment;
  const factory FilterSearchEvent.setColorId(int? colorId) = _SetColorId;
  const factory FilterSearchEvent.setSeatingCapacity(int? seatingCapacity) = _SetSeatingCapacity;
  const factory FilterSearchEvent.setFuelType(String? fuelType) = _SetFuelType;

  const factory FilterSearchEvent.applyDraft() = _ApplyDraft;
  const factory FilterSearchEvent.resetDraft() = _ResetDraft;
  const factory FilterSearchEvent.reset() = _Reset;
}