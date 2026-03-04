import 'package:car_app_new/core/services/api/api_services.dart';
import 'package:car_app_new/features/car_feature/home/data/models/cars_response_model.dart';

abstract class FilterSearchRemoteDataSource {
  Future<CarsResponseModel> filterSearchCars({
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
  });
}

class FilterSearchRemoteDataSourceImpl implements FilterSearchRemoteDataSource {
  FilterSearchRemoteDataSourceImpl(this._apiService);

  final ApiService _apiService;

  @override
  Future<CarsResponseModel> filterSearchCars({
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
    try {
      return await _apiService.filterSearchCars(
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
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
