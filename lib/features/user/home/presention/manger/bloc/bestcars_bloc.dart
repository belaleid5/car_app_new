// lib/features/user/home/presention/manger/bloc/bestcars_bloc.dart

import 'package:car_app_new/core/services/api/api_result.dart' hide Success;
import 'package:car_app_new/features/user/home/data/repo/home_repo.dart';
import 'package:car_app_new/features/user/home/presention/manger/bloc/bestcars_event.dart';
import 'package:car_app_new/features/user/home/presention/manger/bloc/bestcars_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetBestCarsBloc extends Bloc<GetBestCarsEvent, GetBestCarsState> {

  GetBestCarsBloc({required HomeCarsRepository repository})
      : _repository = repository,
        super(const Initial()) {
    on<Started>(_onStarted);
  }
  final HomeCarsRepository _repository;

  Future<void> _onStarted(
    Started event,
    Emitter<GetBestCarsState> emit,
  ) async {
    emit(const Loading());

    print('Fetching best cars: page=${event.page}, limit=${event.limit}');

    final result = await _repository.getBestCars(
      page: event.page,
      limit: event.limit,
    );

    result.when(
      success: (cars) {
        print('Success: ${cars.length} cars loaded');
        emit(Success(cars));
      },
      failure: (error) {
        print('Error: $error');
        emit(Error(error));
      },
    );
  }
}
