import 'package:freezed_annotation/freezed_annotation.dart';

part 'bestcars_event.freezed.dart';

@freezed
class BestCarsEvent with _$BestCarsEvent {
  const factory BestCarsEvent.fetchBestCars({
    @Default(1) int page,
  }) = _FetchBestCars;
  
  const factory BestCarsEvent.loadMoreBestCars() = _LoadMoreBestCars;
  
  const factory BestCarsEvent.refreshBestCars() = _RefreshBestCars;
}