// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_code_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConfirmCodeResponseModel _$ConfirmCodeResponseModelFromJson(
  Map<String, dynamic> json,
) => _ConfirmCodeResponseModel(
  user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
  message: json['message'] as String,
);

Map<String, dynamic> _$ConfirmCodeResponseModelToJson(
  _ConfirmCodeResponseModel instance,
) => <String, dynamic>{'user': instance.user, 'message': instance.message};
