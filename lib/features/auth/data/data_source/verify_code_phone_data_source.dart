import 'package:car_app_new/core/services/api/api_services.dart';
import 'package:car_app_new/features/auth/data/models/request/verify_code_phone_model_request.dart';
import 'package:car_app_new/features/auth/data/models/response/verify_code_phone_response_model.dart';

abstract class BaseVerifyCodePhoneDataSource {
  Future<VerifyPhoneResponseModel> verifyCodePhone({
    required SendCodePhoneRequestModel verifyCodePhoneRequestModel,
  });
}

class RemoteVerifyCodePhoneDataSource implements BaseVerifyCodePhoneDataSource {
  RemoteVerifyCodePhoneDataSource({required this.apiService});

  final ApiService apiService;

  @override
  Future<VerifyPhoneResponseModel> verifyCodePhone({
    required SendCodePhoneRequestModel verifyCodePhoneRequestModel,
  }) async {
    final result = await apiService.verifyCodePhoneRequest(
      verifyCodePhoneRequestModel.phoneNumber,
      verifyCodePhoneRequestModel.accessToken,
      
    );
    return result;
  }
}
