// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:event_manager_app/features/login/domain/entity/user.dart';
import 'package:flutter/material.dart';

class ProfileDialog extends StatelessWidget {
  final User user;
  const ProfileDialog({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Name'),
            subtitle: Text(user.name),
            dense: true,
          ),
          ListTile(
            leading: const Icon(Icons.email),
            title: const Text('Email'),
            subtitle: Text(user.email),
            dense: true,
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.logout),
            label: const Text('Logout'),
            onPressed: () => Navigator.pop(context, true),
          ),
        ],
      ),
    );
  }
}
