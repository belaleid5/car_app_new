import 'package:freezed_annotation/freezed_annotation.dart';

part 'cars_details_event.freezed.dart';

@freezed
sealed class CarDetailsEvent with _$CarDetailsEvent {
  const factory CarDetailsEvent.getCarDetails({required String carId}) =
      _GetCarDetails;
}
