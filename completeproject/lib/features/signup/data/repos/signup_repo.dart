import 'package:completeproject/core/networking/api_error_handler.dart';
import 'package:completeproject/core/networking/api_result.dart';
import 'package:completeproject/core/networking/api_services.dart';
import 'package:completeproject/features/signup/data/models/signup_request_body.dart';
import 'package:completeproject/features/signup/data/models/signup_response_body.dart';

class SignupRepo {
  final ApiServices apiServices;

  SignupRepo(this.apiServices);
  Future<ApiResult<SignupResponseBody>> signup(
      SignupRequestBody signuprequestbody) async {
    try {
      final response = await apiServices.signup(signuprequestbody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
