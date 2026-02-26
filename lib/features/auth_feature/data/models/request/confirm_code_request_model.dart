import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_code_request_model.freezed.dart';
part 'confirm_code_request_model.g.dart';

@freezed
sealed class ConfirmCodeRequestModel with _$ConfirmCodeRequestModel {
  const factory ConfirmCodeRequestModel({
    required String code,

    @JsonKey(name: 'verify_token')
    required String verifyToken,

    @JsonKey(name: 'access_token')
    String? accessToken,
  }) = _ConfirmCodeRequestModel;

  factory ConfirmCodeRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ConfirmCodeRequestModelFromJson(json);
}
