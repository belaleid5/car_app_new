// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForgotPasswordResponseModel _$ForgotPasswordResponseModelFromJson(
  Map<String, dynamic> json,
) => _ForgotPasswordResponseModel(
  code: json['code'] as bool,
  message: json['message'] as String,
  resetToken: json['resetToken'] as String,
);

Map<String, dynamic> _$ForgotPasswordResponseModelToJson(
  _ForgotPasswordResponseModel instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'resetToken': instance.resetToken,
};
