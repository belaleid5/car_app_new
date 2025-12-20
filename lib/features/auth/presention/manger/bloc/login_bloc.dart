import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:car_app_new/core/services/shared_pref/shared_keys.dart';
import 'package:car_app_new/core/services/shared_pref/shared_pref.dart';
import 'package:car_app_new/features/auth/data/models/request/login_request_model.dart';
import 'package:car_app_new/features/auth/data/repo/auth_repo.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc/login_event.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc/login_state.dart';
import 'package:flutter/material.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._authRepo) : super(const LoginState.initial()) {
    on<LoginEvent>(_login);
  }

  final LoginRepo _authRepo;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  FutureOr<void> _login(LoginEvent event, Emitter<LoginState> emit) async {
    try {
      debugPrint('🔐 ========== LOGIN STARTED ==========');
      debugPrint('📧 Email: ${emailController.text.trim()}');
      
      // 🔥 الخطوة 1: امسح أي tokens قديمة
      debugPrint('🗑️ Clearing old tokens...');
      await SharedPref().removePreference(PrefKeys.accessToken);
      await SharedPref().removePreference(PrefKeys.refreshToken);
      await SharedPref().removePreference(PrefKeys.userId);
      debugPrint('✅ Old tokens cleared');
      
      // 🔥 الخطوة 2: emit loading state
      emit(const LoginState.loading());
      debugPrint('⏳ Loading state emitted');
      
      // 🔥 الخطوة 3: اعمل login request
      debugPrint('📡 Sending login request...');
      final result = await _authRepo.login(
        LoginRequestModel(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        ),
      );

      debugPrint('📦 Result received: ${result.runtimeType}');

      // 🔥 الخطوة 4: تحقق إن الـ emitter لسه شغال
      if (emit.isDone) {
        debugPrint('⚠️ Emitter is done, skipping emit');
        return;
      }

      // 🔥 الخطوة 5: معالجة النتيجة
      await result.when(
        success: (loginResponse) async {
          debugPrint('✅ ========== LOGIN SUCCESS ==========');
          debugPrint('👤 User: ${loginResponse.userInfo.fullName}');
          debugPrint('📧 Email: ${loginResponse.userInfo.email}');
          debugPrint('🆔 User ID: ${loginResponse.userInfo.id}');
          
          // 🔥 احفظ الـ tokens
          await SharedPref().setString(
            PrefKeys.accessToken,
            loginResponse.tokens.accessToken,
          );
          debugPrint('💾 Access token saved');
          
          await SharedPref().setString(
            PrefKeys.refreshToken,
            loginResponse.tokens.refreshToken,
          );
          debugPrint('💾 Refresh token saved');
          
          await SharedPref().setInt(
            PrefKeys.userId,
            loginResponse.userInfo.id,
          );
          debugPrint('💾 User ID saved');
          
          // 🔥 تحقق مرة تانية قبل الـ emit
          if (!emit.isDone) {
            emit(LoginState.success(loginResponse));
            debugPrint('✅ Success state emitted');
          }
          
          debugPrint('🎉 ========== LOGIN COMPLETED ==========');
        },
        failure: (error) async {
          debugPrint('❌ ========== LOGIN FAILED ==========');
          debugPrint('❌ Error: $error');
          
          // 🔥 تحقق قبل الـ emit
          if (!emit.isDone) {
            emit(LoginState.error(error: error));
            debugPrint('❌ Error state emitted');
          }
        },
      );
    } catch (e, stackTrace) {
      debugPrint('💥 ========== EXCEPTION CAUGHT ==========');
      debugPrint('💥 Exception: $e');
      debugPrint('📚 Stack trace:');
      debugPrint(stackTrace.toString());
      
      // 🔥 تحقق قبل الـ emit
      if (!emit.isDone) {
        emit(const LoginState.error(error: 'An error occurred. Please try again.'));
        debugPrint('❌ Error state emitted from catch block');
      }
    }
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}