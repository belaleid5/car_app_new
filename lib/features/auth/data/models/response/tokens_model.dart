import 'package:json_annotation/json_annotation.dart';

part 'tokens_model.g.dart';

@JsonSerializable()
class TokensModel {

  TokensModel({
    required this.accessToken,
    required this.refreshToken,
  });

  factory TokensModel.fromJson(Map<String, dynamic> json) =>
      _$TokensModelFromJson(json);
  @JsonKey(name: 'access') // ✅ مهم جداً
  final String accessToken;
  
  @JsonKey(name: 'refresh') // ✅ مهم جداً
  final String refreshToken;

  Map<String, dynamic> toJson() => _$TokensModelToJson(this);
}
