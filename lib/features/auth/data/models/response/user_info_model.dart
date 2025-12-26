import 'package:car_app_new/features/auth/data/models/response/location_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_info_model.g.dart';

@JsonSerializable()
class UserInfoModel {

  factory UserInfoModel.fromJson(Map<String, dynamic> json) =>
      _$UserInfoModelFromJson(json);

  UserInfoModel({
    required this.id,
    required this.fullName,
    required this.email,
    required this.phone,
    required this.phoneIsVerified,
    this.country,
    this.location,
  });
  final int id;
  
  @JsonKey(name: 'full_name')
  final String fullName;
  
  final String email;
  final String phone;
  
  @JsonKey(name: 'phone_is_verified')
  final bool phoneIsVerified;
  
  final CountryModel? country;
  final LocationModel? location;

  Map<String, dynamic> toJson() => _$UserInfoModelToJson(this);
}

@JsonSerializable()
class CountryModel {

  CountryModel({
    required this.id,
    required this.country,
    required this.abbreviation,
  });

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);
  final int id;
  final String country;
  final String abbreviation;

  Map<String, dynamic> toJson() => _$CountryModelToJson(this);
}