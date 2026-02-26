// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_code_phone_model_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendCodePhoneRequestModel _$SendCodePhoneRequestModelFromJson(
  Map<String, dynamic> json,
) => SendCodePhoneRequestModel(
  phoneNumber: json['phone_number'] as String,
  accessToken: json['access_token'] as String,
);

Map<String, dynamic> _$SendCodePhoneRequestModelToJson(
  SendCodePhoneRequestModel instance,
) => <String, dynamic>{
  'phone_number': instance.phoneNumber,
  'access_token': instance.accessToken,
};
