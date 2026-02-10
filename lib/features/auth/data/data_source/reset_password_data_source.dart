import 'package:car_app_new/core/common/model/message_response_model.dart';
import 'package:car_app_new/core/services/api/api_services.dart';
import 'package:car_app_new/features/auth/data/models/request/reset_password_request_model.dart';

abstract class BaseResetPasswordDataSource {
  

    Future<MessageResponseModel> resetPassword({
    required ResetPasswordRequestModel resetPassword,
  });
}

class RemoteResetPasswordDataSource implements BaseResetPasswordDataSource {
  RemoteResetPasswordDataSource({required this.apiService});

  final ApiService apiService;









    @override
  Future<MessageResponseModel> resetPassword({
    required ResetPasswordRequestModel resetPassword,
  }) async {
    final result = await apiService.resetPassword(
      resetPassword.code,
      resetPassword.resetToken,
      resetPassword.password,
      resetPassword.confirmPassword,
       
    );
    return result;
  }
}
