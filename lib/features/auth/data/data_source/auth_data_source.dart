import 'package:car_app_new/core/services/api/api_services.dart';
import 'package:car_app_new/features/auth/data/models/request/login_request_model.dart';
import 'package:car_app_new/features/auth/data/models/response/login_resons_model.dart';

// ignore: one_member_abstracts
abstract class BaseAuthDataSource {
  Future<LoginResponseModel> login(LoginRequestModel request);
}


class RemoteAuthDataSource implements BaseAuthDataSource {
  RemoteAuthDataSource(this.apiService);
  final ApiService apiService;

  @override
  Future<LoginResponseModel> login(LoginRequestModel request) {
    final response = apiService.login(request);
    return response;
  }



}
