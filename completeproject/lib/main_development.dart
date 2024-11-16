import 'package:completeproject/core/di/dependency_injection.dart';
import 'package:completeproject/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setupGetit();
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp());
}
