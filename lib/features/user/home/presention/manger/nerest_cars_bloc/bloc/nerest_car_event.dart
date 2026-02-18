

import 'package:freezed_annotation/freezed_annotation.dart';

part 'nerest_car_event.freezed.dart';

@freezed
class NerestCarsEvent with _$NerestCarsEvent {
  const factory NerestCarsEvent.started() = _Started;
  const factory NerestCarsEvent.loadMore() = _LoadMore;
}
