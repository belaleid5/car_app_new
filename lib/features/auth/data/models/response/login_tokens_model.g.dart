// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_tokens_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokensResponseModel _$TokensResponseModelFromJson(Map<String, dynamic> json) =>
    TokensResponseModel(
      accessToken: json['access'] as String,
      refreshToken: json['refresh'] as String,
    );

Map<String, dynamic> _$TokensResponseModelToJson(
  TokensResponseModel instance,
) => <String, dynamic>{
  'access': instance.accessToken,
  'refresh': instance.refreshToken,
};
