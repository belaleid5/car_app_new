import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:car_app_new/features/car_feature/details/data/models/car_details_model.dart';
import 'package:car_app_new/features/car_feature/details/data/repo/cars_details_repo.dart';
import 'package:car_app_new/features/car_feature/details/presention/manger/bloc/cars_details_event.dart';
import 'package:car_app_new/features/car_feature/details/presention/manger/bloc/cars_details_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarDetailsBloc extends Bloc<CarDetailsEvent, CarDetailsState> {
  CarDetailsBloc(this._repo) : super(const CarDetailsState.initial()) {
    on<CarDetailsEvent>(_onGetCarDetails);
  }

  final CarsDetailsRepo _repo;

 
  static final Map<String, CarDetailsModel> _cache = {};

  Future<void> _onGetCarDetails(
    CarDetailsEvent event,
    Emitter<CarDetailsState> emit,
  ) async {
    if (_cache.containsKey(event.carId)) {
      emit(CarDetailsState.success(_cache[event.carId]!));
      return;
    }

    emit(const CarDetailsState.loading());
    final result = await _repo.getCarDetails(carId: event.carId);
    result.when(
      success: (car) {
        _cache[event.carId] = car;
        emit(CarDetailsState.success(car));
      },
      failure: (error) => emit(CarDetailsState.error(error)),
    );
  }
}
