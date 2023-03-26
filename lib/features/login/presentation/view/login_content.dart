// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginContent extends StatelessWidget {
  final bool loading;
  const LoginContent({
    Key? key,
    required this.loading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: ListView(),
          ),
          !loading
              ? Positioned.fill(
                  child: Container(
                    color: Colors.black38,
                    child: const CupertinoActivityIndicator(),
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
