part of 'cars_details_bloc.dart';




class CarDetailsBloc extends Bloc<CarDetailsEvent, CarDetailsState> {
  CarDetailsBloc(this._repo) : super(const CarDetailsState.initial()) {
    on<_GetCarDetails>(_onGetCarDetails);
  }

  final CarsDetailsRepo _repo;

  Future<void> _onGetCarDetails(
    _GetCarDetails event,
    Emitter<CarDetailsState> emit,
  ) async {
    emit(const CarDetailsState.loading());
    final result = await _repo.getCarDetails(carId: event.carId);
    result.when(
      success: (car) => emit(CarDetailsState.success(car)),
      failure: (error) => emit(CarDetailsState.error(error)),
    );
  }
}