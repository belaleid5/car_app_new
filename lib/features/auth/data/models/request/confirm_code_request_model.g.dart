// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_code_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConfirmCodeRequestModel _$ConfirmCodeRequestModelFromJson(
  Map<String, dynamic> json,
) => _ConfirmCodeRequestModel(
  code: json['code'] as String,
  verifyToken: json['verify_token'] as String,
  accessToken: json['access_token'] as String?,
);

Map<String, dynamic> _$ConfirmCodeRequestModelToJson(
  _ConfirmCodeRequestModel instance,
) => <String, dynamic>{
  'code': instance.code,
  'verify_token': instance.verifyToken,
  'access_token': instance.accessToken,
};
