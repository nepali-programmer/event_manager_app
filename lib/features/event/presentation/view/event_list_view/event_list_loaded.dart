import 'event_list_empty.dart';
import 'package:flutter/material.dart';

import '../../../../../data/constant/app_constant.dart';
import '../../../domain/entity/event.dart';

class EventListLoaded extends StatelessWidget {
  final List<Event> events;
  const EventListLoaded({super.key, required this.events});

  @override
  Widget build(BuildContext context) {
    if (events.isEmpty) {
      return const EventListEmpty();
    }
    return ListView(
      padding: const EdgeInsets.all(kDefaultSpacing),
    );
  }
}
