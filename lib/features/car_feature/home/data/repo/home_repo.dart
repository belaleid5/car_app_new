import 'package:car_app_new/core/common/model/brands_response_model.dart';
import 'package:car_app_new/core/errors/api_error_handler.dart';
import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:car_app_new/features/car_feature/home/data/data_source/home_data_source.dart';
import 'package:car_app_new/features/car_feature/home/data/models/car_nerest_response_model.dart';
import 'package:car_app_new/features/car_feature/home/data/models/cars_response_model.dart';

class HomeCarsRepository {
  HomeCarsRepository({required HomeCarsRemoteDataSource remoteDataSource})
    : _remoteDataSource = remoteDataSource;
  final HomeCarsRemoteDataSource _remoteDataSource;

  Future<ApiResult<CarsResponseModel>> getBestCars({
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

  Future<ApiResult<List<BrandsResponseModel>>> getBrands({
    int? page,
    int? limit,
  }) async {
    try {
      final result = await _remoteDataSource.getBrands();
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(
        ErrorHandler.handle(error).apiErrorModel.message ??
            'Something went wrong, please try again',
      );
    }
  }

  Future<ApiResult<CarsNerestResponseModel>> getNerestCars({
    int? page,
    int? limit,
  }) async {
    try {
      final result = await _remoteDataSource.getNerestCars(
        page: page,
        limit: limit,
      );
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(
        ErrorHandler.handle(error).apiErrorModel.message ??
            'Something went wrong, please try again',
      );
    }
  }
}
