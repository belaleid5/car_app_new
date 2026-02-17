import 'package:bloc/bloc.dart';
import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:car_app_new/core/common/model/cars_model.dart';
import 'package:car_app_new/features/user/home/data/repo/home_repo.dart';
import 'package:car_app_new/features/user/home/presention/manger/bloc/bestcars_event.dart';
import 'package:car_app_new/features/user/home/presention/manger/bloc/bestcars_state.dart';

class BestCarsBloc extends Bloc<BestCarsEvent, BestCarsState> {
  BestCarsBloc(this._repository) : super(const BestCarsState.loading()) {
    on<BestCarsEvent>((event, emit) async {
      await event.when(
        fetchBestCars: (page) => _onFetchBestCars(page, emit),
        loadMoreBestCars: () => _onLoadMoreBestCars(emit),
        refreshBestCars: () => _onRefreshBestCars(emit),
      );
    });
  }

  final HomeCarsRepository _repository;
  
  static const int _defaultPageSize = 10;
  static const int _firstPage = 1;


  Future<void> _onFetchBestCars(
    int page,
    Emitter<BestCarsState> emit,
  ) async {

    if (_isFirstPage(page)) {
      emit(const BestCarsState.loading());
    }

    final result = await _repository.getBestCars(
      page: page,
      limit: _defaultPageSize,
    );

    result.when(
      success: (response) => _handleSuccess(response, page, emit),
      failure: (error) => _handleFailure(error, emit),
    );
  }

  Future<void> _onLoadMoreBestCars(
    Emitter<BestCarsState> emit,
  ) async {
    state.maybeWhen(
      success: (cars, hasMore, currentPage) {
       
        add(BestCarsEvent.fetchBestCars(page: currentPage + 1));
      },
      orElse: () {},
    );
  }

  Future<void> _onRefreshBestCars(
    Emitter<BestCarsState> emit,
  ) async {
    add(const BestCarsEvent.fetchBestCars(page: _firstPage));
  }


  void _handleSuccess(
    dynamic response,
    int requestedPage,
    Emitter<BestCarsState> emit,
  ) {
    final cars = response.data as List<CarsModel>;
    final currentPage = response.meta.currentPage as int;
    final lastPage = response.meta.lastPage as int;


    final updatedCars = _mergeCarsList(cars, requestedPage);
    final hasMore = _hasMorePages(currentPage, lastPage);


    emit(BestCarsState.success(
      cars: updatedCars,
      hasMore: hasMore,
      currentPage: currentPage,
    ));
  }

  void _handleFailure(String error, Emitter<BestCarsState> emit) {
    emit(BestCarsState.error(message: error));
  }

  List<CarsModel> _mergeCarsList(List<CarsModel> newCars, int page) {
    if (_isFirstPage(page)) {
      return newCars;
    }

    return state.maybeWhen(
      success: (cars, _, __) => [...cars, ...newCars],
      orElse: () => newCars,
    );
  }

  bool _hasMorePages(int currentPage, int lastPage) => currentPage < lastPage;
  bool _isFirstPage(int page) => page == _firstPage;

}