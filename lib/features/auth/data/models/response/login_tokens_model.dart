import 'package:json_annotation/json_annotation.dart';

part 'login_tokens_model.g.dart';

@JsonSerializable(explicitToJson: true) // 🔥 أضف explicitToJson
class TokensModel {

  TokensModel({
    required this.accessToken,
    required this.refreshToken,
  });
  @JsonKey(name: 'access')
  final String accessToken;
  
  @JsonKey(name: 'refresh')
  final String refreshToken;

  factory TokensModel.fromJson(Map<String, dynamic> json) =>
      _$TokensModelFromJson(json);

  Map<String, dynamic> toJson() => _$TokensModelToJson(this); // 🔥 أضف toJson
}