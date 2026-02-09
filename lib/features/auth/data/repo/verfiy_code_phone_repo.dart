import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:car_app_new/features/auth/data/data_source/verify_code_phone_data_source.dart';
import 'package:car_app_new/features/auth/data/models/request/confirm_code_request_model.dart';
import 'package:car_app_new/features/auth/data/models/request/verify_code_phone_model_request.dart';
import 'package:car_app_new/features/auth/data/models/response/user_model.dart';
import 'package:car_app_new/features/auth/data/models/response/verify_code_phone_response_model.dart';

class VerifyCodePhoneRepo {
  VerifyCodePhoneRepo( this.dataSource); 
  
  final BaseVerifyCodePhoneDataSource dataSource;

  Future<ApiResult<VerifyPhoneResponseModel>> sendCodePhone({
    required SendCodePhoneRequestModel verifyCodePhoneRequestModel,
  }) async {
    try {
      final response = await dataSource.verifyCodePhone(
        verifyCodePhoneRequestModel: verifyCodePhoneRequestModel,
      );
      
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(
        'Failed to verify code for phone: ${verifyCodePhoneRequestModel.phoneNumber}',
      );
    }
  }



  
}
