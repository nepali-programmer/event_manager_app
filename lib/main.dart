import 'package:event_manager_app/features/event/presentation/cubit/event/event_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/di/injection.dart';
import 'core/theme/app_theme.dart';
import 'features/login/presentation/cubit/login/login_cubit.dart';
import 'features/login/presentation/view/login_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
      theme: getIt<AppThemeData>().lightTheme(),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => getIt<LoginCubit>()),
        ],
        child: const LoginView(),
      ),
    );
  }
}
