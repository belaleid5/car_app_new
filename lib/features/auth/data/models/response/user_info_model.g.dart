// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfoModel _$UserInfoModelFromJson(Map<String, dynamic> json) =>
    UserInfoModel(
      id: (json['id'] as num).toInt(),
      fullName: json['full_name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      phoneIsVerified: json['phone_is_verified'] as bool,
      country: json['country'] == null
          ? null
          : CountryModel.fromJson(json['country'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      nationalId: json['nationalId'] as String?,
      birthDate: json['birthDate'] as String?,
      birthTime: json['birthTime'] as String?,
    );

Map<String, dynamic> _$UserInfoModelToJson(UserInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'nationalId': instance.nationalId,
      'birthDate': instance.birthDate,
      'birthTime': instance.birthTime,
      'phone_is_verified': instance.phoneIsVerified,
      'country': instance.country,
      'location': instance.location,
    };

CountryModel _$CountryModelFromJson(Map<String, dynamic> json) => CountryModel(
  id: (json['id'] as num).toInt(),
  country: json['country'] as String,
  abbreviation: json['abbreviation'] as String,
);

Map<String, dynamic> _$CountryModelToJson(CountryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country': instance.country,
      'abbreviation': instance.abbreviation,
    };
