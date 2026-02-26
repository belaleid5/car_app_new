import 'package:json_annotation/json_annotation.dart';

part 'verify_code_phone_model_request.g.dart';

@JsonSerializable()
class SendCodePhoneRequestModel {
  SendCodePhoneRequestModel({
    required this.phoneNumber,
    required this.accessToken,
  });

  factory SendCodePhoneRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SendCodePhoneRequestModelFromJson(json);

  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  @JsonKey(name: 'access_token')
  final String accessToken;

  Map<String, dynamic> toJson() => _$SendCodePhoneRequestModelToJson(this);
}
