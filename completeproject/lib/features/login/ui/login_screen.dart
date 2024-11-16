import 'package:completeproject/core/helpers/spacing.dart';

import 'package:completeproject/core/themeing/colors.dart';
import 'package:completeproject/core/themeing/styles.dart';
import 'package:completeproject/core/widgets/app_custom_button.dart';

import 'package:completeproject/features/login/data/models/login_request_model.dart';
import 'package:completeproject/features/login/logic/cubit/login_cubit.dart';
import 'package:completeproject/features/login/ui/widgets/email_and_password.dart';
import 'package:completeproject/features/login/ui/widgets/dont_have_account.dart';
import 'package:completeproject/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:completeproject/features/login/ui/widgets/terms_condtions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back", style: AppTextStyles.font24primarycolor),
                verticalSpace(8),
                Text(
                  "We're excited to have you back, can't wait to \nsee what you've been up to since you last \nlogged in.",
                  style: AppTextStyles.font14greyregular,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const EmailAndPassword(),
                    verticalSpace(24),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "Forgot Password?",
                        style: AppTextStyles.font14darkbluemedium,
                      ),
                    ),
                    verticalSpace(40),
                    SizedBox(
                      width: 400.w,
                      child: CustomButton(
                        text: "Login",
                        color: ColorsManger.primarycolor,
                        onTap: () {
                          ValidatethenLogin(context);
                        },
                      ),
                    ),
                    verticalSpace(16),
                    const TermsCondtions(),
                    verticalSpace(60),
                    const DontHaveAccount(),
                    const LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void ValidatethenLogin(BuildContext context) {
    if (context.read<LoginCubit>().formkey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginstate(LoginRequestBody(
          email: context.read<LoginCubit>().emailController.text,
          password: context.read<LoginCubit>().passwordController.text));
    }
  }
}
