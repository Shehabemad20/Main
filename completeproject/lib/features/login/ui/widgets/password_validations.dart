import 'package:completeproject/core/helpers/spacing.dart';
import 'package:completeproject/core/themeing/colors.dart';
import 'package:completeproject/core/themeing/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PasswordValidations extends StatelessWidget {
  final bool haslowercase;
  final bool hasuppercase;
  final bool hasspecialcharcater;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordValidations(
      {super.key,
      required this.haslowercase,
      required this.hasuppercase,
      required this.hasspecialcharcater,
      required this.hasNumber,
      required this.hasMinLength});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow("At least 1 lowercase lettter", haslowercase),
        verticalSpace(2),
        buildValidationRow("At least 1 uppercase lettter", hasuppercase),
        verticalSpace(2),
        buildValidationRow(
            "At least 1 specialcharc lettter", hasspecialcharcater),
        verticalSpace(2),
        buildValidationRow("At least 1 number ", hasNumber),
        verticalSpace(2),
        buildValidationRow("At least 8 char", hasMinLength),
        verticalSpace(2),
      ],
    );
  }

  buildValidationRow(String text, bool hasvalidated) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.0,
          backgroundColor: Colors.grey,
        ),
        horizontalspace(8),
        Text(
          text,
          style: AppTextStyles.font12darkbluemedium.copyWith(
            decoration: hasvalidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color:
                hasvalidated ? ColorsManger.lightgrey : ColorsManger.darkblue,
          ),
        ),
      ],
    );
  }
}
