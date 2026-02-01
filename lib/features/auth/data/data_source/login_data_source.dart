import 'package:car_app_new/core/services/api/api_services.dart';
import 'package:car_app_new/features/auth/data/models/request/login_request_model.dart';
import 'package:car_app_new/features/auth/data/models/response/user_response_model.dart';

abstract class BaseLoginDataSource {
  Future<UserResponseModel> login(LoginRequestModel request);
}

class RemoteLoginDataSource implements BaseLoginDataSource {
  RemoteLoginDataSource(this.apiService);
  final ApiService apiService;

  @override
  Future<UserResponseModel> login(LoginRequestModel request) {
    final response = apiService.login(request);
    return response;
  }
}
