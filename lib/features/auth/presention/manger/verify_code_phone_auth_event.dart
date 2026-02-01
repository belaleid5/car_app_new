import 'package:freezed_annotation/freezed_annotation.dart';
part 'verify_code_phone_auth_event.freezed.dart';

@freezed
class VerifyCodePhoneAuthEvent with _$VerifyCodePhoneAuthEvent {
  const factory VerifyCodePhoneAuthEvent.verifyPhone({
    required String phoneNumber,
    required String accessToken,
  }) = _VerifyPhone;
  

  
  @override
  String get accessToken => accessToken;
  
  @override
  String get phoneNumber => phoneNumber;

  
}
