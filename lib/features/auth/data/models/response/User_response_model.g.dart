// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) =>
    UserResponseModel(
      message: json['message'] as String,
      userInfo: UserInfoModel.fromJson(json['user'] as Map<String, dynamic>),
      tokens: TokensModel.fromJson(json['tokens'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseModelToJson(UserResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.userInfo.toJson(),
      'tokens': instance.tokens.toJson(),
    };
