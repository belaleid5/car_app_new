import 'package:car_app_new/core/app/app_cubit/app_cubit_cubit.dart';
import 'package:car_app_new/core/services/api/api_services.dart';
import 'package:car_app_new/core/services/api/dio_factory.dart';
import 'package:car_app_new/features/auth/data/data_source/auth_data_source.dart';
import 'package:car_app_new/features/auth/data/repo/auth_repo.dart';
import 'package:car_app_new/features/auth/presention/manger/bloc/login_bloc.dart';
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
    sl..registerLazySingleton<LoginRepo>(() => LoginRepo(sl()))
       ..registerLazySingleton<BaseAuthDataSource>(() => RemoteAuthDataSource(sl()))

  ..registerFactory<LoginBloc>(() => LoginBloc(sl()));
}
