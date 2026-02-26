import 'package:car_app_new/core/services/api/api_services.dart';
import 'package:car_app_new/features/auth_feature/data/models/response/forgot_password_response_model.dart';

abstract class BaseForgotPasswordDataSource {
  

    Future<ForgotPasswordResponseModel> forgotPassword({
    required String email,
  });
}

class RemoteForgotPasswordDataSource implements BaseForgotPasswordDataSource {
  RemoteForgotPasswordDataSource({required this.apiService});

  final ApiService apiService;
  
  @override
  Future<ForgotPasswordResponseModel> forgotPassword({required String email}) {
    final result = apiService.forgotPassword(email);
    return result;
  }









   
}
