// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfoModel _$UserInfoModelFromJson(Map<String, dynamic> json) =>
    UserInfoModel(
      fullName: json['full_name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      phoneIsVerified: json['phone_is_verified'] as String,
      country: CountryResponseModel.fromJson(
        json['country'] as Map<String, dynamic>,
      ),
      location: LocationResponseModel.fromJson(
        json['location'] as Map<String, dynamic>,
      ),
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$UserInfoModelToJson(UserInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'phone_is_verified': instance.phoneIsVerified,
      'country': instance.country,
      'location': instance.location,
    };
