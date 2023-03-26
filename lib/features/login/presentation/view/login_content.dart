import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/constant/app_constant.dart';
import '../cubit/login/login_cubit.dart';

class LoginContent extends StatefulWidget {
  final String message;
  const LoginContent({
    super.key,
    required this.message,
  });

  @override
  State<LoginContent> createState() => _LoginContentState();
}

class _LoginContentState extends State<LoginContent> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;

  @override
  void initState() {
    email = TextEditingController();
    password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  login() {
    if (formKey.currentState != null && formKey.currentState!.validate()) {
      FocusScope.of(context).unfocus();
      context.read<LoginCubit>().auth(
            email: email.text.trim(),
            password: password.text.trim(),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(kDefaultSpacing),
      children: [
        const SizedBox(height: kDefaultSpacing),
        Align(
          child: Image.asset(
            width: 100.0,
            height: 100.0,
            'assets/images/event.png',
          ),
        ),
        const SizedBox(height: kDefaultSpacing),
        Text(
          'Login',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const Text('Log in to use Event Manager'),
        const SizedBox(height: kDefaultSpacing),
        Form(
          key: formKey,
          child: Material(
            elevation: 2.0,
            borderRadius: BorderRadius.circular(kSmallBorderRadius),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: kLargeSpacing,
                horizontal: kDefaultSpacing,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    controller: email,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      alignLabelWithHint: true,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email is required';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: kDefaultSpacing),
                  TextFormField(
                    controller: password,
                    obscureText: true,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textInputAction: TextInputAction.done,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      alignLabelWithHint: true,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password is required';
                      }
                      return null;
                    },
                    onEditingComplete: () {
                      login();
                    },
                  ),
                  const SizedBox(height: kDefaultSpacing),
                  widget.message.isNotEmpty
                      ? Container(
                          color: Theme.of(context).colorScheme.errorContainer,
                          padding: const EdgeInsets.all(kDefaultSpacing),
                          margin:
                              const EdgeInsets.only(bottom: kDefaultSpacing),
                          child: Text(
                            widget.message,
                            style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onErrorContainer),
                          ),
                        )
                      : const SizedBox.shrink(),
                  ElevatedButton(
                    child: const Text('Login'),
                    onPressed: () {
                      login();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
