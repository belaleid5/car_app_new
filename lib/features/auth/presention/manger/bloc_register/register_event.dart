part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.started() = _Started;

  const factory RegisterEvent.getLocations() = _GetLocations;

  const factory RegisterEvent.selectLocation(int locationId) = _SelectLocation;

  const factory RegisterEvent.register() = _Register;
}
