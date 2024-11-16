import 'package:completeproject/core/routing/routes.dart';
import 'package:completeproject/features/login/logic/cubit/login_cubit.dart';
import 'package:completeproject/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () => const CircularProgressIndicator(),
          success: (loginresponse) =>
              GoRouter.of(context).push(Routes.homeScreen),
          error: (error) => const Text("Error"),
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
