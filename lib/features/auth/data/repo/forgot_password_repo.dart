import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:car_app_new/features/auth/data/data_source/forgot_password_data_source.dart';
import 'package:car_app_new/features/auth/data/models/response/forgot_password_response_model.dart';

class ForgotPasswordRepo {
  ForgotPasswordRepo( {required this.dataSource});

  final BaseForgotPasswordDataSource dataSource;
  Future<ApiResult<ForgotPasswordResponseModel>> forgotPassword({
    required String email,
  }) async {
    try {
      final response = await dataSource.forgotPassword(email: email);

      return ApiResult.success(response);
    } catch (error) {
      return const ApiResult.failure(
        'Failed to Reset Password',
      );
    }
  }
}
