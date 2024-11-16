import 'package:completeproject/core/networking/api_constants.dart';
import 'package:completeproject/features/home/data/apis/home_api_constans.dart';
import 'package:completeproject/features/home/data/models/specialization_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'home_api_services.g.dart';

@RestApi(
  baseUrl: ApiConstants.baseUrl,
)
abstract class HomeApiServices {
  factory HomeApiServices(Dio dio) = _HomeApiServices;
  @GET(HomeApiConstans.specializationEP)
  Future<SpecializationsResponseModel> getHomeData();
}
