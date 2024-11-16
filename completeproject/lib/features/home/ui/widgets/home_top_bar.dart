import 'package:completeproject/core/helpers/spacing.dart';
import 'package:completeproject/core/themeing/colors.dart';
import 'package:completeproject/core/themeing/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi,Shehab!",
              style: AppTextStyles.font18darkbluebold,
            ),
            verticalSpace(10),
            Text(
              "How Are you Today?",
              style: AppTextStyles.font13greyregular,
            ),
          ],
        ),
        const Spacer(
          flex: 1,
        ),
        CircleAvatar(
          radius: 24,
          backgroundColor: ColorsManger.lighterlightgrey,
          child: SvgPicture.asset("assets/icons/Button.svg"),
        ),
      ],
    );
  }
}
