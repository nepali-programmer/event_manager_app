// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:event_manager_app/core/widget/button/error_button.dart';
import 'package:event_manager_app/data/constant/app_constant.dart';
import 'package:flutter/material.dart';

import 'package:event_manager_app/features/event/domain/entity/event.dart';

import '../../../../../core/api/api_url.dart';

class EventDetailView extends StatelessWidget {
  final Event event;
  const EventDetailView({
    Key? key,
    required this.event,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ApiUrl apiUrl = ApiUrl();
    String imageUrl = '${apiUrl.imageUrl}/${event.eventPicture}';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event detail'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(kDefaultSpacing),
        children: [
          Align(
            child: Container(
              width: 200.0,
              height: 200.0,
              color:
                  Theme.of(context).colorScheme.primaryContainer.withAlpha(200),
              child: Hero(
                tag: event.eventPicture,
                child: Image.network(
                  imageUrl,
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: kDefaultSpacing),
          Text(
            event.name,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            event.price.toStringAsFixed(1),
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
          Text(
            '(${event.ticketType.name})',
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: kDefaultSpacing),
          Text(
            event.address,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
          const SizedBox(height: kExtraSmallSpacing),
          Text(event.description),
          const SizedBox(height: kExtraSmallSpacing),
          Row(
            children: [
              Expanded(
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('Start date'),
                  subtitle: Text(event.startDate),
                ),
              ),
              Expanded(
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('End date'),
                  subtitle: Text(event.endDate),
                ),
              ),
            ],
          ),
          const SizedBox(height: kDefaultSpacing),
          ErrorButton(
            title: 'Buy Ticket',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
