import 'package:bloc/bloc.dart';
import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:car_app_new/features/auth/data/models/request/verify_code_phone_model_request.dart';
import 'package:car_app_new/features/auth/data/models/response/verify_code_phone_response_model.dart';
import 'package:car_app_new/features/auth/data/repo/verfiy_code_phone_repo.dart';
import 'package:car_app_new/features/auth/presention/manger/verify_code_manger/verify_code_phone_auth_event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_code_phone_auth_state.dart';
part 'verify_code_phone_auth_bloc.freezed.dart';

class VerifyCodePhoneAuthBloc extends Bloc<VerifyCodePhoneAuthEvent, VerifyCodePhoneAuthState> {
  VerifyCodePhoneAuthBloc(this._repo) : super(const VerifyCodePhoneAuthState.initial()) {
    on<VerifyCodePhoneAuthEvent>(_onEvent);
  }

  final VerifyCodePhoneRepo _repo;

  Future<void> _onEvent(
    VerifyCodePhoneAuthEvent event,
    Emitter<VerifyCodePhoneAuthState> emit,
  ) async {
    await event.maybeWhen(
      verifyPhone: (phoneNumber, accessToken) async {
        emit(const VerifyCodePhoneAuthState.loading());

        final result = await _repo.sendCodePhone(
          verifyCodePhoneRequestModel: SendCodePhoneRequestModel(
            phoneNumber: phoneNumber,
            accessToken: accessToken,
          ),
        );

        result.when(
          success: (response) {
            emit(VerifyCodePhoneAuthState.success(response: response));
          },
          failure: (error) {
            emit(VerifyCodePhoneAuthState.failure(error: error));
          },
        );
      },
      orElse: () {
      },
    );
  }
}
