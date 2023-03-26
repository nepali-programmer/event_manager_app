import 'package:event_manager_app/data/constant/app_constant.dart';
import 'package:event_manager_app/features/event/domain/entity/event.dart';
import 'package:event_manager_app/features/event/presentation/view/event_detail_view/event_detail_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/api/api_url.dart';

class EventContainer extends StatelessWidget {
  final Event event;
  const EventContainer({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    decreaseTextLength(String value) {
      int maxLength = 100;
      if (value.length > maxLength) {
        value = value.substring(0, 100);
      }
      return '$value...[Read More]';
    }

    ApiUrl apiUrl = ApiUrl();
    String imageUrl = '${apiUrl.imageUrl}/${event.eventPicture}';
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultSpacing),
      child: Material(
        color: Theme.of(context).colorScheme.primaryContainer.withAlpha(150),
        borderRadius: BorderRadius.circular(kSmallBorderRadius),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => EventDetailView(
                event: event,
              ),
            ));
          },
          borderRadius: BorderRadius.circular(kSmallSpacing),
          child: Padding(
            padding: const EdgeInsets.all(kDefaultSpacing),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 60.0,
                      height: 60.0,
                      color: Theme.of(context)
                          .colorScheme
                          .primaryContainer
                          .withAlpha(200),
                      child: Hero(
                        tag: event.eventPicture,
                        child: Image.network(
                          imageUrl,
                          width: 60.0,
                          height: 60.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: kSmallSpacing),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            event.name,
                            textAlign: TextAlign.left,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            event.price.toStringAsFixed(1),
                            textAlign: TextAlign.left,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                          ),
                          Text(event.ticketType.name),
                          Text(
                            event.address,
                            textAlign: TextAlign.left,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: kSmallSpacing),
                Text(decreaseTextLength(event.description)),
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        dense: true,
                        title: const Text('Start date'),
                        subtitle: Text(event.startDate),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        dense: true,
                        title: const Text('End date'),
                        subtitle: Text(event.endDate),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
