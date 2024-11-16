import 'package:completeproject/core/helpers/spacing.dart';
import 'package:completeproject/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/themeing/colors.dart';

class DoctorSpecialityListViewItem extends StatelessWidget {
  final SpecializationsData? specializationsData;
  final int itemindex;
  DoctorSpecialityListViewItem(
      {super.key, this.specializationsData, required this.itemindex});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsetsDirectional.only(
          start: itemindex == 0 ? 0 : 24.w,
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: ColorsManger.lighterlightgrey,
              child: SvgPicture.asset("assets/icons/doctor.svg"),
            ),
            verticalSpace(8.h),
            Text(specializationsData?.name ?? "Spec",
                style: TextStyle(fontSize: 16)),
          ],
        ));
  }
}
