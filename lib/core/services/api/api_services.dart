import 'package:car_app_new/core/constants/api_constants.dart';
import 'package:car_app_new/features/auth/data/models/request/login_request_model.dart';
import 'package:car_app_new/features/auth/data/models/request/register_request_model.dart';
import 'package:car_app_new/features/auth/data/models/response/location_response_model.dart'; // ✅ بس دي
import 'package:car_app_new/features/auth/data/models/response/user_response_model.dart';
import 'package:car_app_new/features/auth/data/models/response/verify_code_phone_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.loginEndpoint)
  Future<UserResponseModel> login(
    @Body() LoginRequestModel loginRequestBody,
  );

  @POST(ApiConstants.registerEndpoint)
  Future<UserResponseModel> register(
    @Body() RegisterRequestModel registerRequestBody,
  );

  @GET(ApiConstants.registerLocationsEndpoint)
  Future<LocationResponseModel> getLocations();

  @POST('https://qent.azurewebsites.net/api/auth/phone/request_verify_code/')
  @FormUrlEncoded() 
  Future<VerifyPhoneResponseModel> verifyCodePhoneRequest(
    @Field('phone') String phoneNumber, // ← اسم الـ field حسب الـ API
    @Field('access_token') String accessToken,
  );
}
