part of 'cars_details_bloc.dart';

@freezed
sealed class CarDetailsEvent with _$CarDetailsEvent {
  const factory CarDetailsEvent.getCarDetails({required String carId}) = _GetCarDetails;
}
