import 'package:bloc/bloc.dart';
import 'package:completeproject/features/signup/data/models/signup_request_body.dart';
import 'package:completeproject/features/signup/data/repos/signup_repo.dart';
import 'package:completeproject/features/signup/logic/cubit/signup_state.dart';
import 'package:flutter/material.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.signupRepo) : super(const SignupState.initial());
  final SignupRepo signupRepo;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordContoller = TextEditingController();

  TextEditingController passwordConformationContoller = TextEditingController();
  final formkery = GlobalKey<FormState>();

  void emitSingupstate() async {
    emit(const SignupState.loading());
    final result = await signupRepo.signup(SignupRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordContoller.text,
        passwordConfirmation: passwordConformationContoller.text,
        gender: 0));
    result.when(success: (signupresponse) {
      emit(SignupState.success(signupresponse));
    }, failure: (error) {
      emit(SignupState.error(error: error.apiErrorModel.message ?? ""));
    });
  }
}
