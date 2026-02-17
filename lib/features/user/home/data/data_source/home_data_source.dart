import 'package:car_app_new/core/services/api/api_services.dart';
import 'package:car_app_new/core/common/model/brands_response_model.dart';
import 'package:car_app_new/features/user/home/data/models/cars_response_model.dart';

abstract class HomeCarsRemoteDataSource {
  Future<CarsResponseModel> getBestCars({int? page, int? limit});
  Future<List<BrandsResponseModel>> getBrands();

}

class HomeCarsRemoteDataSourceImpl implements HomeCarsRemoteDataSource {
  HomeCarsRemoteDataSourceImpl(this._apiService);

  final ApiService _apiService;



  @override
  Future<List<BrandsResponseModel>> getBrands() async {
    final response = await _apiService.getBrands();
    return response.data.map((brand) => BrandsResponseModel(
      data: [brand], meta: response.meta)).toList();
  }


@override
Future<CarsResponseModel> getBestCars({int? page, int? limit}) async {
  final response = await _apiService.getCars(
    page: page,
    limit: limit,
  );
  return response;
}


  
 
}
