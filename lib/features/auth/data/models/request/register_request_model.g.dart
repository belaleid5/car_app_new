// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRequestModel _$RegisterRequestModelFromJson(
  Map<String, dynamic> json,
) => RegisterRequestModel(
  fullName: json['full_name'] as String,
  email: json['email'] as String,
  phone: json['phone'] as String,
  password: json['password'] as String,
  countryId: (json['country_id'] as num).toInt(),
  locationId: (json['location_id'] as num).toInt(),
  availableToCreateCar: json['available_to_create_car'] as bool? ?? false,
);

Map<String, dynamic> _$RegisterRequestModelToJson(
  RegisterRequestModel instance,
) => <String, dynamic>{
  'full_name': instance.fullName,
  'email': instance.email,
  'phone': instance.phone,
  'password': instance.password,
  'country_id': instance.countryId,
  'location_id': instance.locationId,
  'available_to_create_car': instance.availableToCreateCar,
};
