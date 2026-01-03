part of 'verify_code_phone_auth_bloc.dart';

@freezed
class VerifyCodePhoneAuthState with _$VerifyCodePhoneAuthState {
  const factory VerifyCodePhoneAuthState.initial() = _Initial;
  
  const factory VerifyCodePhoneAuthState.loading() = _Loading;
  
  const factory VerifyCodePhoneAuthState.success({
    required VerifyPhoneResponseModel response,
  }) = _Success;
  
  const factory VerifyCodePhoneAuthState.failure({
    required String error,
  }) = _Failure;
}
