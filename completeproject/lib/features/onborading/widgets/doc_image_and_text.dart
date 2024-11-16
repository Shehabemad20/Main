import 'package:completeproject/core/themeing/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocImageAndText extends StatelessWidget {
  const DocImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.1,
          child: SvgPicture.asset(
            "assets/icons/mainlogo.svg",
          ),
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset("assets/images/onBoarding_doc.png"),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Text(
            "Best Doctor \nAppointment App",
            style: AppTextStyles.font32BlueBold.copyWith(height: 1.4.h),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
