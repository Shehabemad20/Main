import 'package:completeproject/core/networking/api_error_handler.dart';
import 'package:completeproject/core/networking/api_result.dart';
import 'package:completeproject/features/home/data/apis/home_api_services.dart';
import 'package:completeproject/features/home/data/models/specialization_response_model.dart';

class HomeRepo {
  final HomeApiServices homeApiServices;

  HomeRepo(this.homeApiServices);
  Future<ApiResult<SpecializationsResponseModel>> getSpecializations() async {
    try {
      final respone = await homeApiServices.getHomeData();
      return ApiResult.success(respone);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
