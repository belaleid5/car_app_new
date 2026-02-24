import 'package:car_app_new/core/errors/api_error_handler.dart';
import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:car_app_new/core/services/api/api_services.dart';
import 'package:car_app_new/features/auth_feature/data/models/request/login_request_model.dart';
import 'package:car_app_new/features/auth_feature/data/models/response/user_response_model.dart';

class LoginRepo {
  LoginRepo(this._apiService);
  final ApiService _apiService;

  Future<ApiResult<UserResponseModel>> login(
    LoginRequestModel loginRequestModel,
  ) async {
    try {
      final response = await _apiService.login(loginRequestModel);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(
        ErrorHandler.handle(error).apiErrorModel.message!,
      );
    }
  }
}
