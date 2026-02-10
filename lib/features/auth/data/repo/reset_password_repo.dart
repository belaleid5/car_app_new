import 'package:car_app_new/core/common/model/message_response_model.dart';
import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:car_app_new/features/auth/data/data_source/reset_password_data_source.dart';
import 'package:car_app_new/features/auth/data/models/request/reset_password_request_model.dart';

class ResetPasswordRepo {
  ResetPasswordRepo(this.datasource);

  final BaseResetPasswordDataSource datasource;
  Future<ApiResult<MessageResponseModel>> confirmCode({
    required ResetPasswordRequestModel resetPassword,
  }) async {
    try {
      final response = await datasource.resetPassword(
        resetPassword: resetPassword,
      );

      return ApiResult.success(response);
    } catch (error) {
      return const ApiResult.failure(
        'Failed to reset password  ',
      );
    }
  }
}
