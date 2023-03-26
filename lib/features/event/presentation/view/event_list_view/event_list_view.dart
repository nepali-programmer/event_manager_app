import 'event_list_error.dart';
import 'event_list_loaded.dart';
import 'event_list_loading.dart';
import 'package:flutter/material.dart';

class EventListView extends StatelessWidget {
  const EventListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event list'),
        centerTitle: true,
      ),
      body: const EventListLoading(),
    );
  }
}
