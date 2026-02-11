// States
import 'package:car_app_new/core/common/model/message_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_state.freezed.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState.initial() = _Initial;
  const factory ResetPasswordState.loading() = _Loading;
  const factory ResetPasswordState.success(MessageResponseModel message) = _Success;
  const factory ResetPasswordState.error(String message) = _Error;
}