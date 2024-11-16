import 'package:completeproject/core/themeing/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsCondtions extends StatelessWidget {
  const TermsCondtions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "By logging, you agree to our",
            style: AppTextStyles.font13greyregular,
          ),
          TextSpan(
            text: " Terms and Conditions\n",
            style: AppTextStyles.font13greyregular.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: "and ",
            style: AppTextStyles.font13greyregular.copyWith(height: 1.5.h),
          ),
          TextSpan(
            text: "Privacy Policy.",
            style: AppTextStyles.font13greyregular.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
