import 'package:car_app_new/core/common/model/brands_response_model.dart';
import 'package:car_app_new/core/common/model/cars_model.dart';
import 'package:car_app_new/core/common/model/message_response_model.dart';
import 'package:car_app_new/core/constants/api_constants.dart';
import 'package:car_app_new/features/auth_feature/data/models/request/login_request_model.dart';
import 'package:car_app_new/features/auth_feature/data/models/request/register_request_model.dart';
import 'package:car_app_new/features/auth_feature/data/models/response/confirm_code_response_model.dart';
import 'package:car_app_new/features/auth_feature/data/models/response/forgot_password_response_model.dart';
import 'package:car_app_new/features/auth_feature/data/models/response/location_response_model.dart'; // ✅ بس دي
import 'package:car_app_new/features/auth_feature/data/models/response/user_response_model.dart';
import 'package:car_app_new/features/auth_feature/data/models/response/verify_code_phone_response_model.dart';
import 'package:car_app_new/features/car_feature/details/data/models/car_details_model.dart';
import 'package:car_app_new/features/car_feature/home/data/models/car_nerest_response_model.dart';
import 'package:car_app_new/features/car_feature/home/data/models/cars_response_model.dart';
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

  @POST(ApiConstants.verifyCodePhoneEndpoint)
  @FormUrlEncoded()
  Future<VerifyPhoneResponseModel> verifyCodePhoneRequest(
    @Field('phone') String phoneNumber,
    @Field('access_token') String accessToken,
  );
  @POST(ApiConstants.confirmCodeEndpoint)
  @FormUrlEncoded()
  Future<ConfirmCodeResponseModel> confirmCode(
    @Field('code') String code,
    @Field('verify_token') String verifyToken,
    @Field('access_token') String accessToken,
  );

  @POST(ApiConstants.forgotPasswordEndpoint)
  @FormUrlEncoded()
  Future<ForgotPasswordResponseModel> forgotPassword(
    @Field('email') String email,
  );

  @POST(ApiConstants.resetPasswordEndpoint)
  @FormUrlEncoded()
  Future<MessageResponseModel> resetPassword(
    @Field('code') String code,
    @Field('reset_token') String resetToken,
    @Field('password') String password,
    @Field('confirm_password') String confirmPassword,
  );

  //Home API
  @GET(ApiConstants.carsEndpoint)
  Future<CarsResponseModel> getCars({
    @Query('page') int? page,
    @Query('limit') int? limit,
  });

  @GET(ApiConstants.brandsEndpoint)
  Future<BrandsResponseModel> getBrands({
    @Query('page') int? page,
  });

  @GET(ApiConstants.nerestCarsEndpoint)
  Future<CarsNerestResponseModel> getNerestCars({
    @Query('page') int? page,
    @Query('limit') int? limit,
  });

 @GET('${ApiConstants.carDetailsEndpoint}/{carId}')
Future<CarDetailsModel> getCarDetails({
  @Path('carId') required String carId,
});




@GET(ApiConstants.searchEndpoint)
Future<CarsResponseModel> filterSearchCars({
  @Query('page') int page = 1,
  @Query('limit') int limit = 10,
  @Query('name_car') String? nameCar,
  @Query('brand_id') int? brandId,
  @Query('car_type') String? carType,
  @Query('type_payment') String? typePayment,
  @Query('color_id') int? colorId,
  @Query('location_id') int? locationId,
  @Query('seating_capacity') int? seatingCapacity,
  @Query('fuel_type') String? fuelType,
  
});
}
