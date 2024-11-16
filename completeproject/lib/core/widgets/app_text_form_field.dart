import 'package:completeproject/core/themeing/colors.dart';
import 'package:completeproject/core/themeing/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contendpadding;
  final InputBorder? focusedborder;
  final InputBorder? enabledborder;
  final String hinttext;
  final TextStyle? hintstyle;
  final bool? isObscureText;
  final Widget? suffixicon;
  final TextEditingController? controller;
  final Function(String?) validator;
  final TextInputType? keyboardType;

  const AppTextFormField(
      {super.key,
      required this.hinttext,
      this.isObscureText,
      this.suffixicon,
      this.contendpadding,
      this.focusedborder,
      this.enabledborder,
      this.controller,
      required this.validator,
      this.hintstyle,
      this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      controller: controller,
      obscureText: isObscureText ?? false,
      style: AppTextStyles.font14darkbluemedium,
      decoration: InputDecoration(
        hintStyle: hintstyle ?? AppTextStyles.font14greyregular,
        hintText: hinttext,
        isDense: true,
        suffixIcon: suffixicon,
        contentPadding: contendpadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedborder ??
            OutlineInputBorder(
                borderSide: const BorderSide(
                    color: ColorsManger.primarycolor, width: 1.3),
                borderRadius: BorderRadius.circular(16)),
        enabledBorder: enabledborder ??
            OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xFFEDEDED), width: 1.3),
                borderRadius: BorderRadius.circular(16)),
        errorBorder: enabledborder ??
            OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red, width: 1.3),
                borderRadius: BorderRadius.circular(16)),
        focusedErrorBorder: enabledborder ??
            OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red, width: 1.3),
                borderRadius: BorderRadius.circular(16)),
      ),
      validator: (value) {
        return validator(value);
      },
    );
  }
}
