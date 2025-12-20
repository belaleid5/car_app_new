import 'package:car_app_new/core/constants/api_constants.dart';
import 'package:car_app_new/features/auth/data/models/request/login_request_model.dart';
import 'package:car_app_new/features/auth/data/models/response/login_response_model.dart'; // 🔥 أضف ده
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.loginEndpoint)
  Future<LoginResponseModel> login( // 🔥 تأكد من الاسم ده
    @Body() LoginRequestModel loginRequestBody,
  );
}