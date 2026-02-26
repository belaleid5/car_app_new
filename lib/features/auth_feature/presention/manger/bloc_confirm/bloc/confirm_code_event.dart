import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_code_event.freezed.dart';

@freezed
sealed class ConfirmCodeEvent with _$ConfirmCodeEvent {
  const factory ConfirmCodeEvent.confirmCode({
    required String code,
    required String verifyToken,
    String? accessToken,
  }) = _ConfirmCode;
}
