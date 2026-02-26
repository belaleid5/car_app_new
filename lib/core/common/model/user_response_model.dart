import 'package:car_app_new/features/auth_feature/data/models/response/tokens_model.dart';
import 'package:car_app_new/core/common/model/user_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_response_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserResponseModel {

  UserResponseModel({
    required this.message,
    required this.userInfo,
    required this.tokens,
  });

  factory UserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserResponseModelFromJson(json);
  final String message;

  @JsonKey(name: 'user')
  final UserModel userInfo;

  final TokensModel tokens;

  Map<String, dynamic> toJson() => _$UserResponseModelToJson(this);
}
