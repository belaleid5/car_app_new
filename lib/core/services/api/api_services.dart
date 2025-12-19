import 'package:car_app_new/core/constants/api_constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'api_services.g.dart';





@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // ========== Authentication Endpoints ==========
  
 /* @POST('/auth/login')
  Future<LoginResponse> login(
    @Body() LoginRequest request,
  );

  @POST('/auth/register')
  Future<SignUpResponse> signUp(
    @Body() SignUpRequest request,
  );
*/
  
}
