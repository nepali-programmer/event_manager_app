import 'package:flutter/cupertino.dart';

import '../../../../../data/constant/app_constant.dart';

class EventListLoading extends StatelessWidget {
  const EventListLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultSpacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          SizedBox(height: kExtraLargeSpacing),
          CupertinoActivityIndicator(radius: 16.0),
          SizedBox(height: kDefaultSpacing),
          Text(
            'Loading...',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
