import 'dart:async';
import 'dart:developer' as developer show log;

import 'package:car_app_new/features/car_feature/search/data/models/cars_filter.dart';
import 'package:car_app_new/features/car_feature/search/data/repo/filter_search_cars_repo.dart';
import 'package:car_app_new/features/car_feature/search/presention/manger/filter_search_event.dart';
import 'package:car_app_new/features/car_feature/search/presention/manger/filter_search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class FilterSearchBloc extends Bloc<FilterSearchEvent, FilterSearchState> {
  FilterSearchBloc(this._repo)
    : super(const FilterSearchState.initial(filter: CarsFilter())) {
    on<FilterSearchEvent>(_onEvent);
  }

  final CarsFilterRepositoryImpl _repo;

  CarsFilter get currentFilter => state.filter;



  FutureOr<void> _onEvent(
    FilterSearchEvent event,
    Emitter<FilterSearchState> emit,
  ) => event.when(
    search:
        (
          query,
          brandId,
          carType,
          colorId,
          locationId,
          seatingCapacity,
          fuelType,
        ) async {
       
          final filter = CarsFilter(
            query: query,
            brandId: brandId,
            locationId: locationId,
          );
          emit(FilterSearchState.loading(filter: filter));
          await _fetch(filter: filter, emit: emit);
          return null;
        },
    updateQuery: (query) async {
    
      final filter = state.filter.copyWith(query: query);
      emit(FilterSearchState.loading(filter: filter));
      await _fetch(filter: filter, emit: emit);
      return null;
    },
    updateBrand: (brandId) async {
      final filter = CarsFilter(brandId: brandId);
      emit(FilterSearchState.loading(filter: filter));
      await _fetch(filter: filter, emit: emit);
      return null;
    },
    applyAdvancedFilter: (filter) async {
      emit(state.copyWith(filter: filter));
      return null;
    },
    fetch: () async {
      emit(FilterSearchState.loading(filter: state.filter));
      await _fetch(filter: state.filter, emit: emit);
      return null;
    },
    setCarType: (carType) async {
      emit(state.copyWith(filter: state.filter.copyWith(type: carType)));
      return null;
    },
    setPrice: (min, max) async {
      emit(
        state.copyWith(
          filter: state.filter.copyWith(minPrice: min, maxPrice: max),
        ),
      );
      return null;
    },
    setTypePayment: (typePayment) async {
      return null;

    },
    setColorId: (colorId) async {
      emit(state.copyWith(filter: state.filter.copyWith(colorId: colorId)));
      return null;
    },
    setSeatingCapacity: (capacity) async {
      emit(
        state.copyWith(
          filter: state.filter.copyWith(seatingCapacity: capacity),
        ),
      );
      return null;
    },
    setFuelType: (fuelType) async {
      emit(state.copyWith(filter: state.filter.copyWith(fuelType: fuelType)));
      return null;
    },
    applyDraft: () async {
      emit(FilterSearchState.loading(filter: state.filter));
      await _fetch(filter: state.filter, emit: emit);
      return null;
    },
    resetDraft: () async {
      emit(state.copyWith(filter: const CarsFilter()));
      return null;
    },
    reset: () async {
      emit(const FilterSearchState.initial(filter: CarsFilter()));
      return null;
    },
  );


  Future<void> _fetch({
    required CarsFilter filter,
    required Emitter<FilterSearchState> emit,
  }) async {
    try {
      final response = await _repo.searchCars(filter: filter);
      final cars = response.data;

      emit(
        FilterSearchState.success(
          cars: cars,
          filter: filter,
          currentPage: response.meta.currentPage,
          lastPage: response.meta.lastPage,
          total: response.meta.total,
          hasMore: response.meta.currentPage < response.meta.lastPage,
        ),
      );
    } catch (e) {
      developer.log('Failed to fetch cars', name: 'FilterSearchBloc', error: e);
      emit(
        FilterSearchState.error(message: 'Something went wrong', filter: filter),
      );
    }
  }
}
