import 'package:car_app_new/core/constants/api_constants.dart';
import 'package:car_app_new/features/auth/data/models/request/login_request_model.dart';
import 'package:car_app_new/features/auth/data/models/response/login_resons_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';



part 'api_services.g.dart';
@RestApi(baseUrl: ApiConstants.baseUrl)
// ignore: one_member_abstracts
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.loginEndpoint)
  Future<LoginResponseModel> login(
    @Body() LoginRequestModel loginRequestBody,
  );


}
