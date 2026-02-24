import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_request_model.freezed.dart';
part 'reset_password_request_model.g.dart';

@freezed
sealed class ResetPasswordRequestModel with _$ResetPasswordRequestModel {
  const factory ResetPasswordRequestModel({
    @JsonKey(name: 'reset_token') required String resetToken,
    required String code,
    required String password,
  @JsonKey(name: 'confirm_password')  
   required String confirmPassword,
  }) = _ResetPasswordRequestModel;

  factory ResetPasswordRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordRequestModelFromJson(json);
}
