import 'package:completeproject/core/helpers/spacing.dart';
import 'package:completeproject/core/themeing/colors.dart';
import 'package:completeproject/core/themeing/styles.dart';
import 'package:completeproject/core/widgets/app_custom_button.dart';
import 'package:completeproject/features/login/ui/widgets/terms_condtions.dart';
import 'package:completeproject/features/signup/logic/cubit/signup_cubit.dart';
import 'package:completeproject/features/signup/ui/widgets/already_have_account.dart';
import 'package:completeproject/features/signup/ui/widgets/sign_up_bloclistener.dart';
import 'package:completeproject/features/signup/ui/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account',
                  style: AppTextStyles.font24primarycolor,
                ),
                verticalSpace(8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: AppTextStyles.font13greyregular,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const SignupForm(),
                    verticalSpace(40),
                    SizedBox(
                      width: 400.w,
                      child: CustomButton(
                        text: "Create Account",
                        color: ColorsManger.primarycolor,
                        textStyle: AppTextStyles.font16whitesemibold,
                        onTap: () {
                          validateThenDoSignup(context);
                        },
                      ),
                    ),
                    verticalSpace(16),
                    const TermsCondtions(),
                    verticalSpace(30),
                    const AlreadyHaveAccount(),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formkery.currentState!.validate()) {
      context.read<SignupCubit>().emitSingupstate();
    }
  }
}
