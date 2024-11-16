import 'package:completeproject/core/networking/api_services.dart';
import 'package:completeproject/core/networking/dio_factory.dart';
import 'package:completeproject/features/home/data/apis/home_api_services.dart';
import 'package:completeproject/features/home/data/repos/home_repo.dart';
import 'package:completeproject/features/home/logic/cubit/home_cubit.dart';
import 'package:completeproject/features/login/data/repos/login_repo.dart';
import 'package:completeproject/features/login/logic/cubit/login_cubit.dart';
import 'package:completeproject/features/signup/data/repos/signup_repo.dart';
import 'package:completeproject/features/signup/logic/cubit/signup_cubit.dart';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> setupGetit() async {
  //dio&Apiservices
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(dio));

  //login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  // sign up
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  //home page
  getIt.registerLazySingleton<HomeApiServices>(() => HomeApiServices(dio));
  getIt.registerLazySingleton<HomeRepo>(
    () => HomeRepo(getIt()),
  );
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
}
