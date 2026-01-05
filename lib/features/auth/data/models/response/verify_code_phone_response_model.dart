// verify_phone_response_model.dart
import 'package:json_annotation/json_annotation.dart';

part 'verify_code_phone_response_model.g.dart';

@JsonSerializable()
class VerifyPhoneResponseModel {
  VerifyPhoneResponseModel({
    required this.message,
    required this.verifyToken,
    required this.code,
  });

  factory VerifyPhoneResponseModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyPhoneResponseModelFromJson(json);

  final String message;

  @JsonKey(name: 'verify_token')
  final String verifyToken;

  final String code;

  Map<String, dynamic> toJson() => _$VerifyPhoneResponseModelToJson(this);
}
