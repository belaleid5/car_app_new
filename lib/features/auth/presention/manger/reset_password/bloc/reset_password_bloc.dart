import 'package:car_app_new/features/auth/presention/manger/reset_password/bloc/reset_password_event.dart';
import 'package:car_app_new/features/auth/presention/manger/reset_password/bloc/reset_password_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';






class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordBloc() : super(const ResetPasswordState.initial()) {
    on<ResetPasswordEvent>((event, emit) async {
      emit(const ResetPasswordState.loading());
      try {
        emit(const ResetPasswordState.success('Password reset successfully'));
      } catch (e) {
        emit(ResetPasswordState.error(e.toString()));
      }
    });
  }
}
