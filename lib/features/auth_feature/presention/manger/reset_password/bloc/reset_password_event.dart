// Events
import 'package:car_app_new/features/auth_feature/data/models/request/reset_password_request_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_event.freezed.dart';


@freezed
@freezed
sealed class ResetPasswordEvent with _$ResetPasswordEvent {
  const factory ResetPasswordEvent.resetPasswordRequested({
    required ResetPasswordRequestModel resetPassword,
     
  }) = _ResetPasswordRequested;
}