import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_code_phone_auth_event.freezed.dart';

@freezed
class VerifyCodePhoneAuthEvent with _$VerifyCodePhoneAuthEvent {
  // إضافة private constructor للسماح بـ getters وmethods
  const VerifyCodePhoneAuthEvent._();
  
  const factory VerifyCodePhoneAuthEvent.verifyPhone({
    required String phoneNumber,
    required String accessToken,
  }) = _VerifyPhone;
  
  const factory VerifyCodePhoneAuthEvent.resendCode({
    required String phoneNumber,
  }) = _ResendCode;
  
  const factory VerifyCodePhoneAuthEvent.verifyCode({
    required String verificationId,
    required String code,
  }) = _VerifyCode;
  
  // الآن يمكنك إضافة helper methods (اختياري)
  // لكن غالباً لن تحتاجها لأن الـ fields متاحة مباشرة
}