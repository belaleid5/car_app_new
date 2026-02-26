import 'package:car_app_new/features/auth_feature/data/models/response/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_code_response_model.freezed.dart';
part 'confirm_code_response_model.g.dart';

@freezed
sealed class ConfirmCodeResponseModel with _$ConfirmCodeResponseModel {
  const factory ConfirmCodeResponseModel({
    required UserModel user,
    required String message,
  }) = _ConfirmCodeResponseModel;

  factory ConfirmCodeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ConfirmCodeResponseModelFromJson(json);
}
