// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResetPasswordRequestModel _$ResetPasswordRequestModelFromJson(
  Map<String, dynamic> json,
) => _ResetPasswordRequestModel(
  resetToken: json['reset_token'] as String,
  code: json['code'] as String,
  password: json['password'] as String,
  confirmPassword: json['confirm_password'] as String,
);

Map<String, dynamic> _$ResetPasswordRequestModelToJson(
  _ResetPasswordRequestModel instance,
) => <String, dynamic>{
  'reset_token': instance.resetToken,
  'code': instance.code,
  'password': instance.password,
  'confirm_password': instance.confirmPassword,
};
