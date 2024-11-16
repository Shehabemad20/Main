import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/themeing/styles.dart';
import '../../data/models/specialization_response_model.dart';

class DoctorListViewItem extends StatelessWidget {
  final Doctors? doctorsmodel;
  const DoctorListViewItem({super.key, required this.doctorsmodel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.network(
              width: 110.w,
              height: 120.h,
              'https://static.wikia.nocookie.net/five-world-war/images/6/64/Hisoka.jpg/revision/latest?cb=20190313114050',
              fit: BoxFit.cover,
            ),
          ),
          horizontalspace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorsmodel?.name ?? "s",
                  style: AppTextStyles.font14darkbluemedium,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(5),
                Text(
                  '${doctorsmodel?.degree} |${doctorsmodel?.phone}',
                  style: AppTextStyles.font14darkbluemedium,
                ),
                verticalSpace(5),
                Text(
                  doctorsmodel?.email ?? "invaild email",
                  style: AppTextStyles.font13greyregular,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
