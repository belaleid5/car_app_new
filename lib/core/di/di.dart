import 'package:car_app_new/core/app/app_cubit/app_cubit_cubit.dart';
import 'package:car_app_new/core/services/api/api_services.dart';
import 'package:car_app_new/core/services/api/dio_factory.dart';
import 'package:car_app_new/features/auth/data/data_source/login_data_source.dart';
import 'package:car_app_new/features/auth/data/data_source/register_data_source.dart';
import 'package:car_app_new/features/auth/data/data_source/verify_code_phone_data_source.dart';
import 'package:car_app_new/features/auth/data/repo/login_repo.dart';
import 'package:car_app_new/features/auth/data/repo/register_repo.dart';
import 'package:car_app_new/features/auth/data/repo/verfiy_code_phone_repo.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc_login/login_bloc.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc_register/register_bloc.dart';
import 'package:car_app_new/features/auth/presention/manger/verify_code_phone_auth_bloc.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

Future<void> setupDI() async {
  await _initCore();
  await _initAuth();
}

Future<void> _initCore() async {
  final dio = DioFactory.getDio();
  sl
    ..registerFactory(AppCubit.new)
    ..registerLazySingleton<ApiService>(
      () => ApiService(dio),
    );
}

Future<void> _initAuth() async {
  // Login Feature
  sl
    ..registerLazySingleton<LoginRepo>(() => LoginRepo(sl()))
    ..registerLazySingleton<BaseLoginDataSource>(
      () => RemoteLoginDataSource(sl()),
    )
    ..registerFactory<LoginBloc>(() => LoginBloc(sl()))
    // Register Feature
    ..registerFactory<RegisterBloc>(() => RegisterBloc(sl()))
    ..registerLazySingleton<RegisterRepo>(() => RegisterRepo(apiService: sl()))
    ..registerLazySingleton<BaseRegisterDataSource>(
      () => RemoteRegisterDataSource(sl()),
    )
    // verification Feature
    ..registerFactory<VerifyCodePhoneAuthBloc>(() => VerifyCodePhoneAuthBloc(sl()))
    ..registerLazySingleton<VerifyCodePhoneRepo>(() => VerifyCodePhoneRepo(sl()))
    ..registerLazySingleton<BaseVerifyCodePhoneDataSource>(
      () => RemoteVerifyCodePhoneDataSource(apiService: sl()),
    );
}
