import '../../../../core/extension/date_extension.dart';
import '../../../../core/widget/button/main_button.dart';
import 'event_list_view/event_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../data/constant/app_constant.dart';

class EventContent extends StatefulWidget {
  const EventContent({super.key});

  @override
  State<EventContent> createState() => _EventContentState();
}

class _EventContentState extends State<EventContent> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController city;
  DateTime? startDate;
  DateTime? endDate;
  @override
  void initState() {
    city = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    city.dispose();
    super.dispose();
  }

  String dateLabel(DateTime? value) {
    if (value == null) {
      return 'Click to choose';
    } else {
      return value.dateWithDash();
    }
  }

  chooseDate(String type) async {
    DateTime? value = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 4),
    );
    setState(() {
      if (type == 'start') {
        startDate = value;
      } else {
        endDate = value;
      }
    });
  }

  search() {
    if (formKey.currentState != null && formKey.currentState!.validate()) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const EventListView(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(kMediumLargeSpacing),
      children: [
        const SizedBox(height: kLargeSpacing),
        Material(
          elevation: 2.0,
          borderRadius: BorderRadius.circular(kSmallBorderRadius),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultSpacing),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
                    child: TextFormField(
                      controller: city,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'City name is required';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        labelText: 'City Name',
                        alignLabelWithHint: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: kDefaultSpacing),
                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          title: const Text('Start Date'),
                          subtitle: Text(dateLabel(startDate)),
                          onTap: () {
                            chooseDate('start');
                          },
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: const Text('End Date'),
                          subtitle: Text(dateLabel(endDate)),
                          onTap: () {
                            chooseDate('send');
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: kDefaultSpacing),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
                    child: MainButton(
                      title: 'Search Event',
                      onPressed: () {
                        search();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
