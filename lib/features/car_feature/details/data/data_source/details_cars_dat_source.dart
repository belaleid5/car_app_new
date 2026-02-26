import 'package:car_app_new/core/services/api/api_services.dart';
import 'package:car_app_new/features/car_feature/details/data/models/car_details_model.dart';

// cars_details_data_source.dart
abstract class DetailsCarsDataSource {
  Future<CarDetailsModel> getCarDetails(String carId);
}

class DetailsCarsDataSourceImpl implements DetailsCarsDataSource {
  DetailsCarsDataSourceImpl(this._apiService);
  final ApiService _apiService;

  @override
  Future<CarDetailsModel> getCarDetails(String carId) async {
    final response = await _apiService.getCarDetails(carId: carId);
    return response;
  }
}
