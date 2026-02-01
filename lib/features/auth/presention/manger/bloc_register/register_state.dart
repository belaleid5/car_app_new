part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.loading() = _Loading;
  const factory RegisterState.locationsLoading() = _LocationsLoading;
  const factory RegisterState.locationsLoaded(List<LocationModel> locations) = _LocationsLoaded;
  const factory RegisterState.locationSelected({
    required int locationId,
    required List<LocationModel> locations,
  }) = _LocationSelected;
  const factory RegisterState.success(UserResponseModel response) = _Success;
  const factory RegisterState.error({required String error}) = _Error;
}