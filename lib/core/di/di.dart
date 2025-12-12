import 'package:car_app_new/core/app/app_cubit/app_cubit_cubit.dart';
import 'package:get_it/get_it.dart';


final GetIt sl = GetIt.instance;

Future<void> setupDI() async {
await  _initCore();
}

Future<void> _initCore() async {
 sl.registerFactory(AppCubit.new);}
