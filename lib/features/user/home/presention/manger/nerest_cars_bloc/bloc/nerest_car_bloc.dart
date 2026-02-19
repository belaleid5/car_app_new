import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:car_app_new/features/user/home/data/models/car_nerst_model.dart';
import 'package:car_app_new/features/user/home/data/repo/home_repo.dart';
import 'package:car_app_new/features/user/home/presention/manger/nerest_cars_bloc/bloc/nerest_car_event.dart';
import 'package:car_app_new/features/user/home/presention/manger/nerest_cars_bloc/bloc/nerest_car_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NerestCarsBloc extends Bloc<NerestCarsEvent, NerestCarsState> {
  NerestCarsBloc(this._repo) : super(const NerestCarsState.initial()) {
    on<FetchNerestCars>(_onFetchNerestCars);
    on<LoadMoreNerestCars>(_onLoadMoreNerestCars);
    on<RefreshNerestCars>(_onRefreshNerestCars);
  }

  final HomeCarsRepository _repo;
  static const int _pageSize = 5;


  Future<void> _onFetchNerestCars(
    FetchNerestCars event,
    Emitter<NerestCarsState> emit,
  ) async {
    if (event.page == 1) {
      emit(const NerestCarsState.loading());
    }

    final result = await _repo.getNerestCars(
      page: event.page,
      limit: _pageSize,
    );

    result.when(
      success: (response) {
        final currentCars = state.maybeWhen(
          success: (cars, _, __) => cars,
          orElse: () => <CarNerstModel>[],
        );

        final newCars = event.page == 1
            ? response.data
            : [...currentCars, ...response.data];

        final hasMore = response.meta.currentPage < response.meta.lastPage;

        emit(
          NerestCarsState.success(
            cars: newCars,
            hasMore: hasMore,
            currentPage: response.meta.currentPage,
          ),
        );
      },
      failure: (error) {
        final previousCars = state.maybeWhen(
          success: (cars, _, __) => cars,
          orElse: () => <CarNerstModel>[],
        );

        emit(
          NerestCarsState.error(
            message: error,
            previousCars: previousCars.isEmpty ? null : previousCars,
          ),
        );
      },
    );
  }

  Future<void> _onLoadMoreNerestCars(
    LoadMoreNerestCars event,
    Emitter<NerestCarsState> emit,
  ) async {
    await state.maybeWhen(
      success: (cars, hasMore, currentPage) async {
        if (!hasMore) {
          return;
        }

        add(NerestCarsEvent.fetchNerestCars(page: currentPage + 1));
      },
      orElse: () {},
    );
  }

  Future<void> _onRefreshNerestCars(
    RefreshNerestCars event,
    Emitter<NerestCarsState> emit,
  ) async {
    add(const NerestCarsEvent.fetchNerestCars());
  }
}
