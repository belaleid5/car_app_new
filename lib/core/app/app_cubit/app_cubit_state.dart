part of 'app_cubit_cubit.dart';

@freezed
class AppState with _$AppCubitState {
  const factory AppState.initial() = _Initial;
  const factory AppState.themeChangeMode({required bool isDarkMode}) =
      ThemeChangeMode;
}
