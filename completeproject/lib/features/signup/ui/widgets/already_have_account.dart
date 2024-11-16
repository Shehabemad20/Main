import 'package:completeproject/core/routing/routes.dart';
import 'package:completeproject/core/themeing/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        const TextSpan(
          text: "Already have an account yet? ",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextSpan(
          text: "Login ",
          style: const TextStyle(
            color: ColorsManger.primarycolor,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              GoRouter.of(context).push(Routes.loginscreen);
            },
        ),
      ]),
    );
  }
}
