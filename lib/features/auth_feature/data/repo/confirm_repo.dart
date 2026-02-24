import 'package:car_app_new/core/services/api/api_result.dart';
import 'package:car_app_new/features/auth_feature/data/data_source/confrim_data_source.dart';
import 'package:car_app_new/features/auth_feature/data/models/request/confirm_code_request_model.dart';
import 'package:car_app_new/features/auth_feature/data/models/response/confirm_code_response_model.dart';

class ConfirmCodePhoneRepo {
  ConfirmCodePhoneRepo( this.dataSource); 
  
  final BaseConfirmCodePhoneDataSource dataSource;

 



   Future<ApiResult<ConfirmCodeResponseModel>> confirmCode({
    required ConfirmCodeRequestModel confirmCodeRequestModel,
  }) async {
    try {
      final response = await dataSource.confirmCode(
        confirmCodeRequestModel: confirmCodeRequestModel,
      );
      
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(
        'Failed to confirm code for phone: ${confirmCodeRequestModel.code}',
      );
    }
  }
}
