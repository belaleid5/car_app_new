// Events
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_event.freezed.dart';


@freezed
sealed class ResetPasswordEvent with _$ResetPasswordEvent {
  const factory ResetPasswordEvent.resetPasswordRequested({
    required String email,
    required String code,
    required String newPassword,
  }) = _ResetPasswordRequested;
}
