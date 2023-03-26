import 'package:event_manager_app/features/event/presentation/widget/event_container.dart';
import 'package:flutter/material.dart';

import '../../../../../data/constant/app_constant.dart';
import '../../../domain/entity/event.dart';
import 'event_list_empty.dart';

class EventListLoaded extends StatelessWidget {
  final List<Event> events;
  const EventListLoaded({super.key, required this.events});

  @override
  Widget build(BuildContext context) {
    if (events.isEmpty) {
      return const EventListEmpty();
    }
    return ListView.builder(
      padding: const EdgeInsets.all(kDefaultSpacing),
      itemCount: events.length,
      itemBuilder: (context, index) {
        return EventContainer(event: events[index]);
      },
    );
  }
}
