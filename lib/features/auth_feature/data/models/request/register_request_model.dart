import 'package:json_annotation/json_annotation.dart';

part 'register_request_model.g.dart';

@JsonSerializable()
class RegisterRequestModel {

  RegisterRequestModel({
    required this.fullName,
    required this.email,
    required this.phone,
    required this.password,
    required this.countryId,
    required this.locationId,
    required this.dateOfBirth,
    required this.nationalId,
    this.availableToCreateCar = false,
  });

  factory RegisterRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestModelFromJson(json);
  @JsonKey(name: 'full_name')
  final String fullName;
  
  final String email;
  final String phone;
  final String password;
  @JsonKey(name: 'date_of_birth')
  final String dateOfBirth;
  @JsonKey(name: 'national_id')
  final String nationalId;
  
  @JsonKey(name: 'country_id')
  final int countryId;
  
  @JsonKey(name: 'location_id')
  final int locationId;
  
  @JsonKey(name: 'available_to_create_car')
  final bool availableToCreateCar;

  Map<String, dynamic> toJson() => _$RegisterRequestModelToJson(this);
}
