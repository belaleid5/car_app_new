import 'package:car_app_new/core/services/api/api_services.dart';
import 'package:car_app_new/features/auth/data/models/request/register_request_model.dart';
import 'package:car_app_new/features/auth/data/models/response/user_response_model.dart';

abstract class BaseRegisterDataSource {
  Future<UserResponseModel> register(RegisterRequestModel request);
}

class RemoteRegisterDataSource implements BaseRegisterDataSource {
  RemoteRegisterDataSource(this.apiService);
  final ApiService apiService;

  @override
  Future<UserResponseModel> register(RegisterRequestModel request) {
    final response = apiService.register(request);
    return response;
  }
}
