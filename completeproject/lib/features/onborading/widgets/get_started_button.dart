import 'package:completeproject/core/routing/routes.dart';
import 'package:completeproject/core/themeing/colors.dart';
import 'package:completeproject/core/themeing/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        child: Text(
          "Get Started",
          style: AppTextStyles.font16whitesemibold,
        ),
        style: ButtonStyle(
          backgroundColor:
              WidgetStateProperty.all<Color>(ColorsManger.primarycolor),
          padding: WidgetStateProperty.all(
            const EdgeInsets.symmetric(vertical: 13.0, horizontal: 0.0),
          ),
          minimumSize: WidgetStateProperty.all<Size>(
            const Size(double.infinity, 32),
          ),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
        ),
        onPressed: () {
          GoRouter.of(context).push(Routes.loginscreen);
        },
      ),
    );
  }
}
