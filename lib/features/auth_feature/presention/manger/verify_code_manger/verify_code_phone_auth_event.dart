import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_code_phone_auth_event.freezed.dart';

@freezed
sealed class VerifyCodePhoneAuthEvent with _$VerifyCodePhoneAuthEvent {
  const VerifyCodePhoneAuthEvent._(); 

  const factory VerifyCodePhoneAuthEvent.verifyPhone({
    required String phoneNumber,
    required String accessToken,
  }) = _VerifyPhone;
}
