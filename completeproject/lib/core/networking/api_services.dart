import 'package:completeproject/features/login/data/models/login_request_model.dart';
import 'package:completeproject/features/login/data/models/login_response_model.dart';
import 'package:completeproject/features/signup/data/models/signup_request_body.dart';
import 'package:completeproject/features/signup/data/models/signup_response_body.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'api_constants.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String? baseUrl}) = _ApiServices;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginrequestbody,
  );
  @POST(ApiConstants.signup)
  Future<SignupResponseBody> signup(
    @Body() SignupRequestBody signupRequestbody,
  );
}
