import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_tokens_model.g.dart';
@JsonSerializable()
class TokensResponseModel {
  const TokensResponseModel({
    required this.accessToken,
    required this.refreshToken,
  });


  factory TokensResponseModel.fromJson(Map<String, dynamic> json)=>_$TokensResponseModelFromJson(json);
  @JsonKey(name: 'access')
  final String accessToken;
  @JsonKey(name: 'refresh')
  final String refreshToken;
}
