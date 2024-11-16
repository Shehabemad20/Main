import 'package:completeproject/core/networking/api_error_handler.dart';
import 'package:completeproject/core/networking/api_result.dart';
import 'package:completeproject/core/networking/api_services.dart';
import 'package:completeproject/features/login/data/models/login_request_model.dart';
import 'package:completeproject/features/login/data/models/login_response_model.dart';

class LoginRepo {
  final ApiServices _apiServices;

  LoginRepo(this._apiServices);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginrequestbody) async {
    try {
      final response = await _apiServices.login(loginrequestbody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
