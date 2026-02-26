import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:car_app_new/core/services/shared_pref/shared_keys.dart';
import 'package:car_app_new/core/services/shared_pref/shared_pref.dart';
import 'package:car_app_new/features/auth_feature/data/models/request/login_request_model.dart';
import 'package:car_app_new/features/auth_feature/data/repo/login_repo.dart';
import 'package:car_app_new/features/auth_feature/presention/manger/bloc_login/login_event.dart';
import 'package:car_app_new/features/auth_feature/presention/manger/bloc_login/login_state.dart';
import 'package:flutter/material.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._authRepo) : super(const LoginState.initial()) {
    on<LoginEvent>(_login);
  }

  final LoginRepo _authRepo;
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool rememberMe = false;
  String? rememberMeError;

  void toggleRememberMe(bool value) {
    rememberMe = value;
    if (value) {
      rememberMeError = null;
    }
  }

  bool validateRememberMe() {
    if (!rememberMe) {
      rememberMeError = 'You must agree to Remember Me';
      return false;
    }
    rememberMeError = null;
    return true;
  }

  FutureOr<void> _login(LoginEvent event, Emitter<LoginState> emit) async {
    try {
      if (!validateRememberMe()) {
        emit(
          LoginState.error(error: rememberMeError ?? 'Remember Me is required'),
        );
        return;
      }

      await removeSharedPreference();

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

          await SharedPref().setString(
            PrefKeys.refreshToken,
            loginResponse.tokens.refreshToken,
          );

          await SharedPref().setInt(
            PrefKeys.userId,
            loginResponse.userInfo.id,
          );

          await SharedPref().setBoolean(PrefKeys.rememberMe, rememberMe);
          if (!emit.isDone) {
            emit(LoginState.success(loginResponse));
          }
        },
        failure: (error) async {
          if (!emit.isDone) {
            emit(LoginState.error(error: error));
          }
        },
      );
    } catch (e) {
      emit(
        const LoginState.error(error: 'An error occurred. Please try again.'),
      );
    }
  }

  Future<void> removeSharedPreference() async {
    await SharedPref().removePreference(PrefKeys.accessToken);
    await SharedPref().removePreference(PrefKeys.refreshToken);
    await SharedPref().removePreference(PrefKeys.userId);
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
