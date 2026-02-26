// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OwnerModel _$OwnerModelFromJson(Map<String, dynamic> json) => _OwnerModel(
  id: (json['id'] as num).toInt(),
  fullName: json['full_name'] as String? ?? '',
  email: json['email'] as String? ?? '',
  phone: json['phone'] as String? ?? '',
  phoneIsVerified: json['phone_is_verified'] as bool? ?? false,
  balance: (json['balance'] as num?)?.toDouble() ?? 0.0,
  nationalId: (json['national_id'] as num?)?.toInt(),
  dateOfBirth: json['date_of_birth'] as String?,
  country: json['country'] == null
      ? null
      : CountryModel.fromJson(json['country'] as Map<String, dynamic>),
  location: json['location'] == null
      ? null
      : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
);

Map<String, dynamic> _$OwnerModelToJson(_OwnerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'phone_is_verified': instance.phoneIsVerified,
      'balance': instance.balance,
      'national_id': instance.nationalId,
      'date_of_birth': instance.dateOfBirth,
      'country': instance.country,
      'location': instance.location,
    };
