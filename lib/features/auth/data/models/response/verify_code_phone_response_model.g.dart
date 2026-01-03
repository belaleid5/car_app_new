// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_code_phone_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyPhoneResponseModel _$VerifyPhoneResponseModelFromJson(
  Map<String, dynamic> json,
) => VerifyPhoneResponseModel(
  message: json['message'] as String,
  verifyCode: json['verify_code'] as String,
  code: json['code'] as String,
);

Map<String, dynamic> _$VerifyPhoneResponseModelToJson(
  VerifyPhoneResponseModel instance,
) => <String, dynamic>{
  'message': instance.message,
  'verify_code': instance.verifyCode,
  'code': instance.code,
};
