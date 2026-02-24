import 'package:car_app_new/core/common/model/cars_model.dart';
import 'package:car_app_new/core/errors/api_error_handler.dart';
import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:car_app_new/features/car_feature/details/data/data_source/details_cars_dat_source.dart';

class CarsDetailsRepo {

  CarsDetailsRepo({required this.detailsCarsDataSource});
  final DetailsCarsDataSource detailsCarsDataSource;

  Future<ApiResult<CarsModel>> getCarDetails({required String carId})async {
    try {
      final result =await detailsCarsDataSource.getCarDetails(carId);
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(
        ErrorHandler.handle(error).apiErrorModel.message ??
            'Something went wrong, please try again',
      );
    }
  }
}