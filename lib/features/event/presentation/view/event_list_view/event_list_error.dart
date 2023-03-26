import '../../../../../core/widget/button/error_button.dart';
import 'package:flutter/material.dart';

import '../../../../../data/constant/app_constant.dart';

class EventListError extends StatelessWidget {
  final void Function()? onRefresh;
  const EventListError({
    super.key,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.errorContainer,
      padding: const EdgeInsets.all(kDefaultSpacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: kExtraLargeSpacing),
          Icon(
            Icons.warning,
            size: kLargeIcon,
            color: Theme.of(context).colorScheme.onErrorContainer,
          ),
          Text(
            'Opps',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
              color: Theme.of(context).colorScheme.onErrorContainer,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'There was a problem loading event list.\nTry again later',
            style: TextStyle(
              fontSize: 14.0,
              color: Theme.of(context).colorScheme.onErrorContainer,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: kDefaultSpacing),
          ErrorButton(
            title: 'Retry',
            onPressed: onRefresh,
          ),
        ],
      ),
    );
  }
}
