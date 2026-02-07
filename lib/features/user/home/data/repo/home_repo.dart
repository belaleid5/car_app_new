import 'package:car_app_new/core/errors/api_error_handler.dart';
import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:car_app_new/features/user/home/data/data_source/home_data_source.dart';
import 'package:car_app_new/features/user/home/data/models/brand_model.dart';
import 'package:car_app_new/features/user/home/data/models/cars_model.dart';

class HomeCarsRepository {
  HomeCarsRepository({required HomeCarsRemoteDataSource remoteDataSource})
    : _remoteDataSource = remoteDataSource;
  final HomeCarsRemoteDataSource _remoteDataSource;

  Future<ApiResult<List<CarsModel>>> getBestCars({
    int? page,
    int? limit,
 
  }) async {
    try {
      final result = await _remoteDataSource.getBestCars(
        page: page,
        limit: limit,
    
      );
      return ApiResult.success(result);
    } catch (error) {
  print('RAW ERROR => $error');

  final handledError = ErrorHandler.handle(error);
  print('API ERROR MODEL => ${handledError.apiErrorModel}');

  return ApiResult.failure(
    handledError.apiErrorModel.message ?? 'Unexpected error',
  );
}

  }

  Future<ApiResult<CarsModel>> getCarById(int id) async {
    try {
      final result = await _remoteDataSource.getCarById(id);
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(
        ErrorHandler.handle(error).apiErrorModel.message ??
            'Something went wrong, please try again',
      );
    }
  }

  Future<ApiResult<List<BrandModel>>> getAllBrands() async {
    try {
      final result = await _remoteDataSource.getAllBrands();
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(
        ErrorHandler.handle(error).apiErrorModel.message ??
            'Something went wrong, please try again',
      );
    }
  }

  Future<ApiResult<List<CarsModel>>> getCarsByBrand(int brandId) async {
    try {
      final result = await _remoteDataSource.getCarsByBrand(brandId);
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(
        ErrorHandler.handle(error).apiErrorModel.message ??
            'Something went wrong, please try again',
      );
    }
  }
}
