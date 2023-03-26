import 'package:flutter/material.dart';

import '../../../../../data/constant/app_constant.dart';

class EventListEmpty extends StatelessWidget {
  const EventListEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultSpacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          SizedBox(height: kExtraLargeSpacing),
          Icon(
            Icons.search_off,
            size: kLargeIcon,
          ),
          Text(
            'Event Not Found',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'Try changing city name, start date or end date to get event data',
            style: TextStyle(
              fontSize: 14.0,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
