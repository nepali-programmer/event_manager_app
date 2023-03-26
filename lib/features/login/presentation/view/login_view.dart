// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:event_manager_app/features/event/presentation/view/event_view.dart';
import 'package:event_manager_app/features/login/presentation/view/login_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection.dart';
import '../../../event/presentation/cubit/event/event_cubit.dart';
import '../cubit/login/login_cubit.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  void initState() {
    context.read<LoginCubit>().auth();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return state.when(
          initial: () => const LoginScaffold(loading: false),
          loading: () => const LoginScaffold(loading: true),
          failure: (message) => LoginScaffold(
            loading: false,
            message: message,
          ),
          success: (user) => BlocProvider(
            create: (context) => getIt<EventCubit>(),
            child: EventView(user: user),
          ),
        );
      },
    );
  }
}
