import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_content.dart';

class LoginScaffold extends StatelessWidget {
  final bool loading;
  final String message;
  const LoginScaffold({
    Key? key,
    required this.loading,
    this.message = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      body: Stack(
        children: [
          LoginContent(message: message),
          loading
              ? Container(
                  color: Colors.white54,
                  child: const Center(child: CupertinoActivityIndicator()),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
