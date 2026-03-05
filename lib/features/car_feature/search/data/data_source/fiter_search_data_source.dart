
import 'package:car_app_new/core/services/api/api_services.dart';
import 'package:car_app_new/features/car_feature/home/data/models/cars_response_model.dart';
import 'package:car_app_new/features/car_feature/search/data/models/cars_filter.dart';



abstract class FilterSearchRemoteDataSource {
  Future<CarsResponseModel> filterSearchCars(CarsFilter filter);
}

class FilterSearchRemoteDataSourceImpl implements FilterSearchRemoteDataSource {
  FilterSearchRemoteDataSourceImpl(this._apiService);

  final ApiService _apiService;

  @override
  Future<CarsResponseModel> filterSearchCars(CarsFilter filter) async {
    try {
      return await _apiService.filterSearchCars(
        query: filter.query,
        brandId: filter.brandId,
        carType: filter.type,
        colorId: filter.colorId,
        locationId: filter.locationId,
        seatingCapacity: filter.seatingCapacity,
        fuelType: filter.fuelType,
      );
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
