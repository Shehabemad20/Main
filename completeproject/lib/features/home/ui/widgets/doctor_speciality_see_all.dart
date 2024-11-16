import 'package:completeproject/core/themeing/styles.dart';
import 'package:flutter/material.dart';

class DoctorSpecialitySeeAll extends StatelessWidget {
  const DoctorSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Doctor Speciality",
          style: AppTextStyles.font14darkbluemedium.copyWith(fontSize: 18),
        ),
        const Spacer(),
        Text("See All", style: AppTextStyles.font12darkbluemedium),
      ],
    );
  }
}
