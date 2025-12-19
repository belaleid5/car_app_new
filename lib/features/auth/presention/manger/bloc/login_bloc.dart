import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:car_app_new/core/services/shared_pref/shared_keys.dart';
import 'package:car_app_new/core/services/shared_pref/shared_pref.dart';
import 'package:car_app_new/features/auth/data/models/request/login_request_model.dart';
import 'package:car_app_new/features/auth/data/repo/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._authRepo) : super(const _Initial()) {
    on<LoginEvent>(_login);
  }

  final LoginRepo _authRepo;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FutureOr<void> _login(LoginEvent event, Emitter<LoginState> emit) async {
    emit(const LoginState.loading());
    final result = await _authRepo.login(
      LoginRequestModel(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      ),
    );

    await result.when(
      success: (loginResponse) async {
        await SharedPref().setString(
          PrefKeys.accessToken,
          loginResponse.tokens.accessToken,
        );
        await SharedPref().setInt(
          PrefKeys.userId,
          loginResponse.userInfo.id,
        );
        emit(const LoginState.success());
      },
      failure: (error) {
        emit(LoginState.failure(errorMessage: error));
      },
    );
  }
}
