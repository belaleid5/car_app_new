import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_response_model.freezed.dart';
part 'forgot_password_response_model.g.dart';

@freezed
 sealed class ForgotPasswordResponseModel with _$ForgotPasswordResponseModel {
  const factory ForgotPasswordResponseModel({
    required bool code,
    required String message,
    required String resetToken,
  }) = _ForgotPasswordResponseModel;

  factory ForgotPasswordResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordResponseModelFromJson(json);
}
