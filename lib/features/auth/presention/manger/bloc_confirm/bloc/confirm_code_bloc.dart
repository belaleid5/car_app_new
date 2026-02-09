import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:car_app_new/core/services/shared_pref/shared_keys.dart';
import 'package:car_app_new/core/services/shared_pref/shared_pref.dart';
import 'package:car_app_new/features/auth/data/models/request/confirm_code_request_model.dart';
import 'package:car_app_new/features/auth/data/models/response/confirm_code_response_model.dart';
import 'package:car_app_new/features/auth/data/repo/confirm_repo.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc_confirm/bloc/confirm_code_event.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc_confirm/bloc/confirm_code_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfirmCodeBloc extends Bloc<ConfirmCodeEvent, ConfirmCodeState> {
  ConfirmCodeBloc(this._repo)
      : super(const ConfirmCodeState.initial()) {
    on<ConfirmCodeEvent>(_onConfirmCodePhone);
  }

  final ConfirmCodePhoneRepo _repo;

  Future<void> _onConfirmCodePhone(
    ConfirmCodeEvent event,
    Emitter<ConfirmCodeState> emit,
  ) async {
    emit(const ConfirmCodeState.loading());

    final result = await _repo.confirmCode(
      confirmCodeRequestModel: ConfirmCodeRequestModel(
        code: event.code,
        verifyToken: event.verifyToken,
        accessToken:
            SharedPref().getString(PrefKeys.accessToken) ?? '',
      ),
    );

    result.when(
      success: (ConfirmCodeResponseModel response) {
        emit(ConfirmCodeState.success(response: response));
      },
      failure: (error) {
        emit(ConfirmCodeState.failure(error: error));
      },
    );
  }
}
