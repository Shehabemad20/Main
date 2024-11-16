import 'package:completeproject/core/di/dependency_injection.dart';
import 'package:completeproject/core/helpers/constans.dart';
import 'package:completeproject/core/helpers/shared_pref.dart';
import 'package:completeproject/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// bool isloggedin = false;
void main() async {
  setupGetit();
  await ScreenUtil.ensureScreenSize();
  // await checkIfuserIsLoggedIn();
  runApp(DocApp());
}

// checkIfuserIsLoggedIn() async {
//   String? userToken =
//       await SharedPrefHelper.getSecuredString(SharedPrefKey.userToken);
//   if (userToken != null && userToken.isNotEmpty) {
//     isloggedin = true;
//   } else {
//     isloggedin = false;
//   }
// }
