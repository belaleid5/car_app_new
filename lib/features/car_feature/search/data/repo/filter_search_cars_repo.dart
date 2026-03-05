import 'package:car_app_new/features/car_feature/home/data/models/cars_response_model.dart';
import 'package:car_app_new/features/car_feature/search/data/data_source/fiter_search_data_source.dart';
import 'package:car_app_new/features/car_feature/search/data/models/cars_filter.dart';

class CarsFilterRepositoryImpl {
  CarsFilterRepositoryImpl(this.remote);
  final FilterSearchRemoteDataSource remote;

  Future<CarsResponseModel> searchCars({required CarsFilter filter}) async {
    return remote.filterSearchCars(filter);
  }
}
