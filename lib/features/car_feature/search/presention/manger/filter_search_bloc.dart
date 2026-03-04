import 'dart:async';
import 'dart:developer' as developer show log;

import 'package:car_app_new/core/common/model/cars_model.dart';
import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:car_app_new/features/car_feature/home/data/models/cars_response_model.dart';
import 'package:car_app_new/features/car_feature/search/data/models/filter_draft.dart';
import 'package:car_app_new/features/car_feature/search/data/repo/filter_search_cars_repo.dart';
import 'package:car_app_new/features/car_feature/search/presention/manger/filter_search_event.dart';
import 'package:car_app_new/features/car_feature/search/presention/manger/filter_search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Manages car search, pagination, and filter draft state.
class FilterSearchBloc extends Bloc<FilterSearchEvent, FilterSearchState> {
  FilterSearchBloc(this._repo) : super(const FilterSearchState.initial()) {
    on<FilterSearchEvent>(_onEvent);
  }

  final FilterSearchCarsRepo _repo;

  SearchFilter _activeFilter = const SearchFilter();
  SearchPagination _pagination = const SearchPagination();
  FilterDraft _draft = const FilterDraft();

  /// The current draft filter being edited in the bottom sheet.
  FilterDraft get draft => _draft;

  // =====================
  // Event Router
  // =====================

  FutureOr<void> _onEvent(
    FilterSearchEvent event,
    Emitter<FilterSearchState> emit,
  ) => event.map(
    search: (e) async {
      _activeFilter = SearchFilter(
        query: e.query,
        brandId: e.brandId,
        locationId: e.locationId,
      );
      _pagination = const SearchPagination();
      emit(const FilterSearchState.loading());
      await _fetchCars(filter: _activeFilter, page: 1, emit: emit);
      return null;
    },
    loadMore: (_) => _onLoadMore(emit),
    reset: (_) => _onReset(emit),
    setCarType: (e) => _updateDraft(carType: e.value),
    setTypePayment: (e) => _updateDraft(typePayment: e.value),
    setColorId: (e) => _updateDraft(colorId: e.value),
    setSeatingCapacity: (e) => _updateDraft(seatingCapacity: e.value),
    setFuelType: (e) => _updateDraft(fuelType: e.value),
    setPrice: (e) => _updateDraft(minPrice: e.min, maxPrice: e.max),
    resetDraft: (_) => _resetDraft(),
    applyDraft: (_) => _onApplyDraft(emit),
  );

  // =====================
  // Draft
  // =====================

  /// Updates specific fields in the draft while preserving others.
  void _updateDraft({
    String? carType,
    String? typePayment,
    int? colorId,
    int? seatingCapacity,
    String? fuelType,
    double? minPrice,
    double? maxPrice,
  }) {
    _draft = FilterDraft(
      carType: carType ?? _draft.carType,
      typePayment: typePayment ?? _draft.typePayment,
      colorId: colorId ?? _draft.colorId,
      seatingCapacity: seatingCapacity ?? _draft.seatingCapacity,
      fuelType: fuelType ?? _draft.fuelType,
      minPrice: minPrice ?? _draft.minPrice,
      maxPrice: maxPrice ?? _draft.maxPrice,
    );
  }

  void _resetDraft() => _draft = const FilterDraft();

  FutureOr<void> _onApplyDraft(Emitter<FilterSearchState> emit) async {
    // ✅ filters لوحدها من الصفر
    _activeFilter = SearchFilter(
      carType: _draft.carType,
      typePayment: _draft.typePayment,
      colorId: _draft.colorId,
      seatingCapacity: _draft.seatingCapacity,
      fuelType: _draft.fuelType,
    );
    _pagination = const SearchPagination();
    emit(const FilterSearchState.loading());
    await _fetchCars(filter: _activeFilter, page: 1, emit: emit);
  }

  // =====================
  // Load More
  // =====================

  FutureOr<void> _onLoadMore(Emitter<FilterSearchState> emit) async {
    final currentSuccess = state.maybeMap(
      success: (s) => s,
      orElse: () => null,
    );

    if (currentSuccess == null || !currentSuccess.hasMore) return;

    emit(FilterSearchState.loadingMore(cars: currentSuccess.cars));

    await _fetchCars(
      filter: _activeFilter,
      page: _pagination.currentPage + 1,
      emit: emit,
      existingCars: currentSuccess.cars,
    );
  }

  // =====================
  // Reset
  // =====================

  void _onReset(Emitter<FilterSearchState> emit) {
    _activeFilter = const SearchFilter();
    _pagination = const SearchPagination();
    _draft = const FilterDraft();
    emit(const FilterSearchState.initial());
  }

  // =====================
  // Fetch
  // =====================

  Future<void> _fetchCars({
    required SearchFilter filter,
    required int page,
    required Emitter<FilterSearchState> emit,
    List<CarsModel> existingCars = const [],
  }) async {
    final result = await _repo.filterSearchCars(
      page: page,
      query: filter.query,
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
      failure: (error) {
        developer.log(
          'Failed to fetch cars',
          name: 'FilterSearchBloc',
          error: error,
        );
        emit(
          FilterSearchState.error(
            message: error,
            previousCars: existingCars.isNotEmpty ? existingCars : null,
          ),
        );
      },
    );
  }

  // =====================
  // Emit Success
  // =====================

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

    emit(
      FilterSearchState.success(
        cars: allCars,
        currentPage: _pagination.currentPage,
        lastPage: _pagination.lastPage,
        total: _pagination.total,
        hasMore: _pagination.hasMore,
      ),
    );
  }
}
