import 'package:completeproject/core/networking/dio_factory.dart';
import 'package:completeproject/features/login/data/models/login_request_model.dart';
import 'package:completeproject/features/login/data/repos/login_repo.dart';
import 'package:completeproject/features/login/logic/cubit/login_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/constans.dart';
import '../../../../core/helpers/shared_pref.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  void emitLoginstate(LoginRequestBody loginrequestbody) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(loginrequestbody);
    response.when(success: (loginresponse) async {
      // await saveUserToken(loginresponse.userData!.token ?? "");
      emit(LoginState.success(loginresponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ""));
    });
  }
}

// Future<void> saveUserToken(String token) async {
//   await SharedPrefHelper.setData(SharedPrefKey.userToken, token);
  // DioFactory.setTokenIntoHeaderAfterLogin(token);
// }
