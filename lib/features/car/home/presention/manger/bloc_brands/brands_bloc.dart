import 'package:bloc/bloc.dart';
import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:car_app_new/features/car/home/data/repo/home_repo.dart';
import 'package:car_app_new/features/car/home/presention/manger/bloc_brands/brands_event.dart';
import 'package:car_app_new/features/car/home/presention/manger/bloc_brands/brands_state.dart';

class BrandsBloc extends Bloc<BrandsEvent, BrandsState> {

  BrandsBloc(this.repository) : super(const BrandsState.initial()) {

    on<BrandsEvent>(_onGetBrands);

  }
  final HomeCarsRepository repository;

  Future<void> _onGetBrands(
    BrandsEvent event,
    Emitter<BrandsState> emit,
  ) async {
    emit(const BrandsState.loading());

    final result = await repository.getBrands();

    result.when(
      success: (brands) {
        emit(BrandsState.loaded(brands: brands));
      },
      failure: (message) {
        emit(BrandsState.error(message: message));
      },
    );
  }
}
