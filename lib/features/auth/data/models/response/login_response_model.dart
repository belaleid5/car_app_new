import 'package:car_app_new/features/auth/data/models/response/login_tokens_model.dart';
import 'package:car_app_new/features/auth/data/models/response/user_info_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_response_model.g.dart';

@JsonSerializable(explicitToJson: true) // 🔥 أضف explicitToJson
class LoginResponseModel {
  final String message;
  
  @JsonKey(name: 'user')
  final UserInfoModel userInfo;
  
  final TokensModel tokens;

  LoginResponseModel({
    required this.message,
    required this.userInfo,
    required this.tokens,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseModelToJson(this);
}