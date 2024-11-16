import 'package:completeproject/core/helpers/spacing.dart';
import 'package:completeproject/core/networking/app_regex.dart';
import 'package:completeproject/core/widgets/app_text_form_field.dart';
import 'package:completeproject/features/login/logic/cubit/login_cubit.dart';
import 'package:completeproject/features/login/ui/widgets/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isobscureText = true;
  late TextEditingController passwordcontroller;
  bool haslowercase = false;
  bool hasuppercase = false;
  bool hasspecialcharcater = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordcontroller = context.read<LoginCubit>().passwordController;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formkey,
      child: Column(
        children: [
          AppTextFormField(
            hinttext: "Email",
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return "Please Enter valid email";
              }
            },
            controller: context.read<LoginCubit>().emailController,
          ),
          verticalSpace(18),
          AppTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please Enter valid  Password";
              }
            },
            hinttext: "Password",
            isObscureText: isobscureText,
            suffixicon: IconButton(
              icon: Icon(
                isobscureText ? Icons.visibility_off : Icons.visibility,
              ),
              onPressed: () {
                setState(() {
                  isobscureText = !isobscureText;
                });
              },
            ),
          ),
          verticalSpace(24),
          PasswordValidations(
            haslowercase: haslowercase,
            hasuppercase: hasuppercase,
            hasMinLength: hasMinLength,
            hasNumber: hasNumber,
            hasspecialcharcater: hasspecialcharcater,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordcontroller.dispose();
    super.dispose();
  }
}
