import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:car_app_new/features/user/home/data/repo/home_repo.dart';
import 'package:car_app_new/features/user/home/presention/manger/nerest_cars_bloc/bloc/nerest_car_event.dart';
import 'package:car_app_new/features/user/home/presention/manger/nerest_cars_bloc/bloc/nerest_car_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NerestCarsBloc extends Bloc<NerestCarsEvent, NerestCarsState> {
  NerestCarsBloc(this._repo) : super(const NerestCarsState.initial()) {
    on<NerestCarsEvent>(_onStarted);
    on<NerestCarsEvent>(_onLoadMore, );
  }

  final HomeCarsRepository _repo;
  static const int limit = 5;

  Future<void> _onStarted(
    NerestCarsEvent event,
    Emitter<NerestCarsState> emit,
  ) async {
    emit(const NerestCarsState.loading());

    final result = await _repo.getNerestCars();

    result.when(
      success: (data) {
        emit(
          NerestCarsState.success(
            cars: data.data,
            hasMore: data.meta.currentPage < data.meta.lastPage,
          ),
        );
      },
      failure: (error) {
        emit(NerestCarsState.error(message: error));
      },
    );
  }

  Future<void> _onLoadMore(
    NerestCarsEvent event,
    Emitter<NerestCarsState> emit,
  ) async {
    await state.maybeWhen(
      success: (cars, hasMore) async {
        if (!hasMore) return;


        emit(
          NerestCarsState.loading(
            cars: cars,
            hasMore: hasMore,
          ),
        );

        final result = await _repo.getNerestCars();

        result.when(
          success: (data) {
            emit(
              NerestCarsState.success(
                cars: [...cars, ...data.data],
                hasMore:
                    data.meta.currentPage < data.meta.lastPage,
              ),
            );
          },
          failure: (error) {
            emit(
              NerestCarsState.error(
                message: error,
                cars: cars,
                hasMore: hasMore,
              ),
            );
          },
        );
      },
      orElse: () {},
    );
  }
}
