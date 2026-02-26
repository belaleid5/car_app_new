part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState.initial() = _Initial;
  const factory ForgotPasswordState.loading() = _Loading;
  const factory ForgotPasswordState.success(ForgotPasswordResponseModel data) = _Success;
  const factory ForgotPasswordState.error({
    required String error,
  }) = _Error;
}
