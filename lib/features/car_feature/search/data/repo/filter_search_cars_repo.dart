import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:car_app_new/features/car_feature/home/data/models/cars_response_model.dart';
import 'package:car_app_new/features/car_feature/search/data/data_source/fiter_search_data_source.dart';

class FilterSearchCarsRepo {
  FilterSearchCarsRepo(this.remoteDataSource);

  final FilterSearchRemoteDataSource remoteDataSource;
final Map<String, CarsResponseModel> _cache = {};

  Future<ApiResult<CarsResponseModel>> filterSearchCars({
    int page = 1,
    int limit = 10,
    String? query,
    int? brandId,
    String? carType,
    String? typePayment,
    int? colorId,
    int? locationId,
    int? seatingCapacity,
    String? fuelType,
  }) async {
     final cacheKey = 'brand_${brandId}_page_$page';

    if (_cache.containsKey(cacheKey)) {
      return ApiResult.success(_cache[cacheKey]!);
    }

    try {
      final response = await remoteDataSource.filterSearchCars(
        page: page,
        limit: limit,
        query: query,
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