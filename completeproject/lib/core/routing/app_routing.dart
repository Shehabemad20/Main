import 'package:completeproject/core/di/dependency_injection.dart';
import 'package:completeproject/core/routing/routes.dart';
import 'package:completeproject/features/home/logic/cubit/home_cubit.dart';
import 'package:completeproject/features/home/ui/home_screen.dart';
import 'package:completeproject/features/login/logic/cubit/login_cubit.dart';
import 'package:completeproject/features/login/ui/login_screen.dart';
import 'package:completeproject/features/onborading/onborading_screen.dart';
import 'package:completeproject/features/signup/logic/cubit/signup_cubit.dart';
import 'package:completeproject/features/signup/ui/sign_up_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        redirect: (context, state) {
          return Routes.onBoarding;
        },
      ),
      GoRoute(
        path: Routes.onBoarding,
        builder: (context, state) => const OnboradingScreen(),
      ),
      GoRoute(
        path: Routes.loginscreen,
        builder: (context, state) => BlocProvider(
          create: (context) => getIt<LoginCubit>(),
          child: const LoginScreen(),
        ),
      ),
      GoRoute(
        path: Routes.Signup,
        builder: (context, state) => BlocProvider(
          create: (context) => getIt<SignupCubit>(),
          child: const SignupScreen(),
        ),
      ),
      GoRoute(
        path: Routes.homeScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => getIt<HomeCubit>()..getSpecializaiton(),
          child: const HomeScreen(),
        ),
      )
    ],
  );
}
