import 'package:event_manager_app/features/event/presentation/view/event_content.dart';
import 'package:event_manager_app/features/event/presentation/widget/profile_dialog.dart';
import 'package:event_manager_app/features/login/presentation/cubit/login/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../login/domain/entity/user.dart';

class EventView extends StatelessWidget {
  final User user;
  const EventView({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
      appBar: AppBar(
        title: const Text('Event Manager'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () async {
              await showDialog(
                context: context,
                builder: (context) => ProfileDialog(user: user),
              ).then((value) {
                if (value == true) {
                  context.read<LoginCubit>().logout();
                }
              });
            },
          ),
        ],
      ),
      body: const EventContent(),
    );
  }
}
