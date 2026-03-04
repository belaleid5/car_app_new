// filter_search_event.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_search_event.freezed.dart';


@freezed
sealed class FilterSearchEvent with _$FilterSearchEvent {
  const factory FilterSearchEvent.search({
    String? query,
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

  const factory FilterSearchEvent.setCarType(String? value) = _SetCarType;
  const factory FilterSearchEvent.setTypePayment(String? value) = _SetTypePayment;
  const factory FilterSearchEvent.setColorId(int? value) = _SetColorId;
  const factory FilterSearchEvent.setSeatingCapacity(int? value) = _SetSeatingCapacity;
  const factory FilterSearchEvent.setFuelType(String? value) = _SetFuelType;
  const factory FilterSearchEvent.setPrice(double min, double max) = _SetPrice;
  const factory FilterSearchEvent.resetDraft() = _ResetDraft;
  const factory FilterSearchEvent.applyDraft() = _ApplyDraft;
}