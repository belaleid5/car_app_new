// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_resons_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseModel _$LoginResponseModelFromJson(
  Map<String, dynamic> json,
) => LoginResponseModel(
  message: json['message'] as String,
  userInfo: UserInfoModel.fromJson(json['userInfo'] as Map<String, dynamic>),
  tokens: TokensResponseModel.fromJson(json['tokens'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LoginResponseModelToJson(LoginResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'userInfo': instance.userInfo,
      'tokens': instance.tokens,
    };
