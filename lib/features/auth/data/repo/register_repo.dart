import 'package:car_app_new/core/errors/api_error_handler.dart';
import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:car_app_new/core/services/api/api_services.dart';
import 'package:car_app_new/features/auth/data/models/request/register_request_model.dart';
import 'package:car_app_new/features/auth/data/models/response/user_response_model.dart';

class RegisterRepo {
  RegisterRepo({required ApiService apiService}) : _apiService = apiService;



  
  final ApiService _apiService;

  Future<ApiResult<UserResponseModel>> register(
    RegisterRequestModel registerRequestModel,
  ) async {
    try {
      final response = await _apiService.register(registerRequestModel);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(
        ErrorHandler.handle(error).apiErrorModel.message!,
      );
    }
  }

}
