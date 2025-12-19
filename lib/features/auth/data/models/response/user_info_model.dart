
import 'package:car_app_new/features/auth/data/models/response/country_model.dart';
import 'package:car_app_new/features/auth/data/models/response/location_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_model.g.dart';
@JsonSerializable()
class UserInfoModel {
  const UserInfoModel({
   required this.fullName,
    required this.email,
    required this.phone,
    required this.phoneIsVerified,
    required this.country,
    required this.location, 
    required this.id,
  });


  factory UserInfoModel.fromJson(Map<String, dynamic> json)=>_$UserInfoModelFromJson(json);


  final int id;
  @JsonKey(name: 'full_name')
  final String fullName;
  final String email;
  final String phone;
  @JsonKey(name: 'phone_is_verified')
  final String phoneIsVerified;
  final CountryResponseModel country;
  final LocationResponseModel location;
}
