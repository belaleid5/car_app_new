import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:car_app_new/features/auth/data/models/request/reset_password_request_model.dart';
import 'package:car_app_new/features/auth/data/repo/reset_password_repo.dart';
import 'package:car_app_new/features/auth/presention/manger/reset_password/bloc/reset_password_event.dart';
import 'package:car_app_new/features/auth/presention/manger/reset_password/bloc/reset_password_state.dart';
import 'package:car_app_new/features/auth/presention/widgets/reset_password/reset_password_controller_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordBloc(this._repo) : super(const ResetPasswordState.initial()) {
    on<ResetPasswordEvent>(_onEvent);
  }

  final ResetPasswordRepo _repo;
  
  final formController = ResetPasswordFormController();

  @override
  Future<void> close() {
    formController.dispose();
    return super.close();
  }

  Future<void> _onEvent(
    ResetPasswordEvent event,
    Emitter<ResetPasswordState> emit,
  ) async {
    await event.maybeWhen(
      resetPasswordRequested: (ResetPasswordRequestModel resetPassword) async {
        emit(const ResetPasswordState.loading());

        final result = await _repo.resetPassword(resetPassword: resetPassword);

        result.when(
          success: (response) => emit(ResetPasswordState.success(response)),
          failure: (error) => emit(ResetPasswordState.error(error)),
        );
      },
      orElse: () {},
    );
  }
}
