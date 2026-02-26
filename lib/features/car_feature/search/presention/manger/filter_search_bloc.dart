// filter_search_bloc.dart
import 'package:car_app_new/core/common/model/cars_model.dart';
import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:car_app_new/features/car_feature/home/data/models/cars_response_model.dart';
import 'package:car_app_new/features/car_feature/search/data/repo/filter_search_cars_repo.dart';
import 'package:car_app_new/features/car_feature/search/presention/manger/filter_search_event.dart';
import 'package:car_app_new/features/car_feature/search/presention/manger/filter_search_state.dart';
import 'package:car_app_new/features/car_feature/search/presention/manger/refactor/search_filter.dart';
import 'package:car_app_new/features/car_feature/search/presention/manger/refactor/search_pagination.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterSearchBloc extends Bloc<FilterSearchEvent, FilterSearchState> {
  FilterSearchBloc(this._repo) : super(const FilterSearchState.initial()) {
    on<FilterSearchEvent>(
      (event, emit) => event.map(
        search: (e) => _onSearch(e, emit),
        loadMore: (e) => _onLoadMore(e, emit),
        reset: (e) => _onReset(e, emit),
      ),
    );
  }

  final FilterSearchCarsRepo _repo;

  SearchFilter _activeFilter = const SearchFilter();
  SearchPagination _pagination = const SearchPagination();


  Future<void> _fetchCars({
    required SearchFilter filter,
    required int page,
    required Emitter<FilterSearchState> emit,
    List<CarsModel> existingCars = const [],
  }) async {
    final result = await _repo.filterSearchCars(
      page: page,
      nameCar: filter.nameCar,
      brandId: filter.brandId,
      carType: filter.carType,
      typePayment: filter.typePayment,
      colorId: filter.colorId,
      locationId: filter.locationId,
      seatingCapacity: filter.seatingCapacity,
      fuelType: filter.fuelType,
    );

    result.when(
      success: (response) => _emitSuccess(
        emit: emit,
        response: response,
        existingCars: existingCars,
      ),
      failure: (error) => emit(
        FilterSearchState.error(
          message: error,
          previousCars: existingCars.isEmpty ? null : existingCars,
        ),
      ),
    );
  }

  void _emitSuccess({
    required Emitter<FilterSearchState> emit,
    required CarsResponseModel response,
    required List<CarsModel> existingCars,
  }) {
    final allCars = [...existingCars, ...response.data];

    if (allCars.isEmpty) {
      emit(const FilterSearchState.empty());
      return;
    }

    _pagination = SearchPagination(
      currentPage: response.meta.currentPage,
      lastPage: response.meta.lastPage,
      total: response.meta.total ?? 0,
      hasMore: response.meta.currentPage < response.meta.lastPage,
    );

    emit(FilterSearchState.success(
      cars: allCars,
      currentPage: _pagination.currentPage,
      lastPage: _pagination.lastPage,
      total: _pagination.total,
      hasMore: _pagination.hasMore,
    ));
  }

  Future<void> _onSearch(
    FilterSearchEvent event,
    Emitter<FilterSearchState> emit,
  ) async {
    event.mapOrNull(
      search: (e) {
        _activeFilter = SearchFilter(
          nameCar: e.nameCar,
          brandId: e.brandId,
          carType: e.carType,
          typePayment: e.typePayment,
          colorId: e.colorId,
          locationId: e.locationId,
          seatingCapacity: e.seatingCapacity,
          fuelType: e.fuelType,
        );
      },
    );

    _pagination = const SearchPagination();
    emit(const FilterSearchState.loading());

    await _fetchCars(
      filter: _activeFilter,
      page: 1,
      emit: emit,
    );
  }

  Future<void> _onLoadMore(
    FilterSearchEvent event,
    Emitter<FilterSearchState> emit,
  ) async {
    
    final successState = state.maybeMap(
      success: (s) => s,
      orElse: () => null,
    );

    if (successState == null || !successState.hasMore) return;

    emit(FilterSearchState.loadingMore(cars: successState.cars));

    await _fetchCars(
      filter: _activeFilter,
      page: _pagination.currentPage + 1,
      emit: emit,
      existingCars: successState.cars,
    );
  }

  void _onReset(
    FilterSearchEvent event,
    Emitter<FilterSearchState> emit,
  ) {
    _activeFilter = const SearchFilter();
    _pagination = const SearchPagination();
    emit(const FilterSearchState.initial());
  }
}