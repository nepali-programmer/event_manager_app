// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:event_manager_app/features/login/presentation/view/login_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../cubit/login/login_cubit.dart';

class LoginView extends StatelessWidget {
  final Widget main;
  const LoginView({
    Key? key,
    required this.main,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginCubit>(),
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          return state.when(
            initial: () => const LoginScaffold(loading: false),
            loading: () => const LoginScaffold(loading: true),
            failure: (message) => LoginScaffold(
              loading: false,
              message: message,
            ),
            success: (user) => main,
          );
        },
      ),
    );
  }
}
