import 'package:bloc/bloc.dart';
import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:car_app_new/features/auth/data/models/response/forgot_password_response_model.dart';
import 'package:car_app_new/features/auth/data/repo/forgot_password_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_bloc.freezed.dart';
part 'forgot_password_event.dart';
part 'forgot_password_state.dart';



class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc(this._repo) : super(const ForgotPasswordState.initial()) {
    on<ForgotPasswordEvent>(_onEvent);
  }

  final ForgotPasswordRepo _repo;

  Future<void> _onEvent(
    ForgotPasswordEvent event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    await event.maybeWhen(
      forgotPassword: (String email) async {
        emit(const ForgotPasswordState.loading());

        final result = await _repo.forgotPassword(email: email); 
        result.when(
          success: (ForgotPasswordResponseModel response) {
            emit(ForgotPasswordState.success(response));
          },
          failure: (error) {
            emit(ForgotPasswordState.error(error: error));
          },
        );
      },
      orElse: () {},
    );
  }
}
