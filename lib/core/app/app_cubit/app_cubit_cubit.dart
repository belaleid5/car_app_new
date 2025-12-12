// core/app/app_cubit/app_cubit_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:car_app_new/core/services/shared_pref/shared_pref.dart';
import 'package:car_app_new/core/services/shared_pref/shared_kyes.dart';

part 'app_cubit_cubit.freezed.dart';
part 'app_cubit_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial());

  bool isDarkMode = false;
  final SharedPref _prefs = SharedPref();

  // ✅ Load theme from SharedPreferences
  void loadThemeMode() {
    isDarkMode = _prefs.getBoolean(PrefKeys.themeMode) ?? false;
    emit(AppState.themeChangeMode(isDarkMode: isDarkMode));
  }

  // ✅ Change and Save theme
  Future<void> changeThemeMode({required bool sharedMode}) async {
    isDarkMode = sharedMode;
    
    // ✅ حفظ في SharedPreferences
    await _prefs.setBoolean(PrefKeys.themeMode, isDarkMode);
    
    // ✅ تحديث الـ UI
    emit(AppState.themeChangeMode(isDarkMode: isDarkMode));
  }

  // ✅ Toggle theme (للاستخدام السهل)
  Future<void> toggleTheme() async {
    await changeThemeMode(sharedMode: !isDarkMode);
  }
}