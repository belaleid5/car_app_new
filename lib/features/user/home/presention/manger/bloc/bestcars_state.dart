// lib/features/user/home/presention/manger/bloc/bestcars_state.dart

import 'package:car_app_new/features/user/home/data/models/cars_model.dart';

abstract class GetBestCarsState {
  const GetBestCarsState();
}

class Initial extends GetBestCarsState {
  const Initial();
}

class Loading extends GetBestCarsState {
  const Loading();
}

class Success extends GetBestCarsState {
  final List<CarsModel> cars;
  const Success(this.cars);
}

class Error extends GetBestCarsState {
  final String message;
  const Error(this.message);
}