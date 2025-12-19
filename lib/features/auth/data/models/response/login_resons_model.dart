import 'package:car_app_new/features/auth/data/models/response/login_tokens_model.dart';
import 'package:car_app_new/features/auth/data/models/response/user_info_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_resons_model.g.dart';
@JsonSerializable()
class LoginResponseModel {
  LoginResponseModel( {
    required this.message,
    required this.userInfo,
    required this.tokens,
    
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json)=>_$LoginResponseModelFromJson(json);
  final String message;
  final UserInfoModel userInfo;
  final TokensResponseModel tokens;

}
