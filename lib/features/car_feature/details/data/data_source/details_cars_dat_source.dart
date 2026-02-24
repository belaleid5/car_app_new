import 'package:car_app_new/core/common/model/cars_model.dart';
import 'package:car_app_new/core/services/api/api_services.dart';

abstract class DetailsCarsDataSource {
  Future<CarsModel> getCarDetails(String carId);
}

class CarDetailsModel {
}

class DetailsCarsDataSourceImpl implements DetailsCarsDataSource {
  DetailsCarsDataSourceImpl({required this.apiService});

  
  final ApiService apiService;
  
  @override
  Future<CarsModel> getCarDetails(String carId) {
    return apiService.getCarDetails(carId: carId);
  }
}
