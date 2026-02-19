

import 'package:freezed_annotation/freezed_annotation.dart';

part 'nerest_car_event.freezed.dart';


@freezed
class NerestCarsEvent with _$NerestCarsEvent {
  const factory NerestCarsEvent.fetchNerestCars({
    @Default(1) int page,
  }) = FetchNerestCars;

  const factory NerestCarsEvent.loadMoreNerestCars() = LoadMoreNerestCars;

  const factory NerestCarsEvent.refreshNerestCars() = RefreshNerestCars;
}