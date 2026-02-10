import 'package:car_app_new/core/services/api/api_services.dart';
import 'package:car_app_new/core/services/shared_pref/shared_keys.dart';
import 'package:car_app_new/core/services/shared_pref/shared_pref.dart';
import 'package:car_app_new/features/auth/data/models/request/confirm_code_request_model.dart';
import 'package:car_app_new/features/auth/data/models/response/confirm_code_response_model.dart';

abstract class BaseConfirmCodePhoneDataSource {
  

    Future<ConfirmCodeResponseModel> confirmCode({
    required ConfirmCodeRequestModel confirmCodeRequestModel,
  });
}

class RemoteConfirmCodePhoneDataSource implements BaseConfirmCodePhoneDataSource {
  RemoteConfirmCodePhoneDataSource({required this.apiService});

  final ApiService apiService;









    @override
  Future<ConfirmCodeResponseModel> confirmCode({
    required ConfirmCodeRequestModel confirmCodeRequestModel,
  }) async {
    final result = await apiService.confirmCode(
      confirmCodeRequestModel.code,
        SharedPref().getString(PrefKeys.accessToken) ?? '',
        SharedPref().getString(PrefKeys.verifyToken) ?? '',
    );
    return result;
  }
}
