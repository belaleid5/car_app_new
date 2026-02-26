import 'package:car_app_new/core/app/app_cubit/app_cubit_cubit.dart';
import 'package:car_app_new/core/constants/api_constants.dart';
import 'package:car_app_new/core/services/api/api_services.dart';
import 'package:car_app_new/core/services/api/dio_factory.dart';
import 'package:car_app_new/features/auth_feature/data/data_source/confrim_data_source.dart';
import 'package:car_app_new/features/auth_feature/data/data_source/forgot_password_data_source.dart';
import 'package:car_app_new/features/auth_feature/data/data_source/login_data_source.dart';
import 'package:car_app_new/features/auth_feature/data/data_source/register_data_source.dart';
import 'package:car_app_new/features/auth_feature/data/data_source/reset_password_data_source.dart';
import 'package:car_app_new/features/auth_feature/data/data_source/verify_code_phone_data_source.dart';
import 'package:car_app_new/features/auth_feature/data/repo/confirm_repo.dart';
import 'package:car_app_new/features/auth_feature/data/repo/forgot_password_repo.dart';
import 'package:car_app_new/features/auth_feature/data/repo/login_repo.dart';
import 'package:car_app_new/features/auth_feature/data/repo/register_repo.dart';
import 'package:car_app_new/features/auth_feature/data/repo/reset_password_repo.dart';
import 'package:car_app_new/features/auth_feature/data/repo/verfiy_code_phone_repo.dart';
import 'package:car_app_new/features/auth_feature/presention/manger/bloc_confirm/bloc/confirm_code_bloc.dart';
import 'package:car_app_new/features/auth_feature/presention/manger/bloc_login/login_bloc.dart';
import 'package:car_app_new/features/auth_feature/presention/manger/bloc_register/register_bloc.dart';
import 'package:car_app_new/features/auth_feature/presention/manger/bloc_verify_code/verify_code_phone_auth_bloc.dart';
import 'package:car_app_new/features/auth_feature/presention/manger/forgot_password/bloc/forgot_password_bloc.dart';
import 'package:car_app_new/features/auth_feature/presention/manger/reset_password/bloc/reset_password_bloc.dart';
import 'package:car_app_new/features/car_feature/details/data/data_source/details_cars_dat_source.dart';
import 'package:car_app_new/features/car_feature/details/data/repo/cars_details_repo.dart';
import 'package:car_app_new/features/car_feature/details/presention/manger/bloc/cars_details_bloc.dart';
import 'package:car_app_new/features/car_feature/home/data/data_source/home_data_source.dart';
import 'package:car_app_new/features/car_feature/home/data/repo/home_repo.dart';
import 'package:car_app_new/features/car_feature/home/presention/manger/best_cars_bloc/bestcars_bloc.dart';
import 'package:car_app_new/features/car_feature/home/presention/manger/bloc_brands/brands_bloc.dart';
import 'package:car_app_new/features/car_feature/home/presention/manger/nerest_cars_bloc/bloc/nerest_car_bloc.dart';
import 'package:car_app_new/features/user_feature/main_bottom_bar/presention/manger/bottom_nav_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

Future<void> setupDI() async {
  await _initCore();
  await _initAuth();
  await homeFeature();
  await bottomNavFeature();
  await carsDetailsFeature();
}

Future<void> _initCore() async {
  sl.registerLazySingleton<Dio>(
    () => Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
      ),
    ),
  );
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
    ..registerFactory<VerifyCodePhoneAuthBloc>(
      () => VerifyCodePhoneAuthBloc(sl()),
    )
    ..registerLazySingleton<VerifyCodePhoneRepo>(
      () => VerifyCodePhoneRepo(sl()),
    )
    ..registerLazySingleton<BaseVerifyCodePhoneDataSource>(
      () => RemoteVerifyCodePhoneDataSource(apiService: sl()),
    )
    // confirm Feature
    ..registerFactory<ConfirmCodeBloc>(() => ConfirmCodeBloc(sl()))
    ..registerLazySingleton<ConfirmCodePhoneRepo>(
      () => ConfirmCodePhoneRepo(sl()),
    )
    ..registerLazySingleton<BaseConfirmCodePhoneDataSource>(
      () => RemoteConfirmCodePhoneDataSource(apiService: sl()),
    )
    // forgot password Feature
    ..registerFactory<ForgotPasswordBloc>(() => ForgotPasswordBloc(sl()))
    ..registerLazySingleton<ForgotPasswordRepo>(
      () => ForgotPasswordRepo(dataSource: sl()),
    )
    ..registerLazySingleton<BaseForgotPasswordDataSource>(
      () => RemoteForgotPasswordDataSource(apiService: sl()),
    )
    // forgot password Feature
    ..registerFactory<ResetPasswordBloc>(() => ResetPasswordBloc(sl()))
    ..registerLazySingleton<ResetPasswordRepo>(() => ResetPasswordRepo(sl()))
    ..registerLazySingleton<BaseResetPasswordDataSource>(
      () => RemoteResetPasswordDataSource(apiService: sl()),
    );
}

// Home Feature
Future<void> homeFeature() async {
  sl
    ..registerFactory<BestCarsBloc>(() => BestCarsBloc(sl()))
    ..registerLazySingleton<HomeCarsRepository>(
      () => HomeCarsRepository(remoteDataSource: sl()),
    )
    ..registerLazySingleton<HomeCarsRemoteDataSource>(
      () => HomeCarsRemoteDataSourceImpl(sl()),
    )
    ..registerFactory<BrandsBloc>(() => BrandsBloc(sl()))
    ..registerFactory<NerestCarsBloc>(() => NerestCarsBloc(sl()));
}

// Bottom Nav Feature
Future<void> bottomNavFeature() async {
  sl.registerFactory<BottomNavCubit>(BottomNavCubit.new);
}

Future<void> carsDetailsFeature() async {
  sl
    ..registerFactory<CarDetailsBloc>(() => CarDetailsBloc(sl()))
    ..registerLazySingleton<CarsDetailsRepo>(
      () => CarsDetailsRepo(detailsCarsDataSource: sl()),
    )
    ..registerLazySingleton<DetailsCarsDataSource>(
      () => DetailsCarsDataSourceImpl(sl()),
    );
}
