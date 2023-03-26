// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:event_manager_app/data/constant/app_constant.dart';
import 'package:flutter/material.dart';

class ErrorButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  const ErrorButton({
    Key? key,
    required this.title,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Theme.of(context).colorScheme.error),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kSmallBorderRadius),
        )),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(kMediumSmallSpacing),
        child: Text(
          title,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onError,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
