import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:car_app_new/features/car_feature/home/data/models/cars_response_model.dart';
import 'package:car_app_new/features/car_feature/search/data/data_source/fiter_search_data_source.dart';

class FilterSearchCarsRepo {
  FilterSearchCarsRepo(this.remoteDataSource);

  final FilterSearchRemoteDataSource remoteDataSource;

  Future<ApiResult<CarsResponseModel>> filterSearchCars({
    int page = 1,
    int limit = 10,
    String? nameCar,
    int? brandId,
    String? carType,
    String? typePayment,
    int? colorId,
    int? locationId,
    int? seatingCapacity,
    String? fuelType,
  }) async {
    try {
      final response = await remoteDataSource.filterSearchCars(
        page: page,
        limit: limit,
        nameCar: nameCar,
        brandId: brandId,
        carType: carType,
        typePayment: typePayment,
        colorId: colorId,
        locationId: locationId,
        seatingCapacity: seatingCapacity,
        fuelType: fuelType,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}