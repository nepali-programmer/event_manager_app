import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extension/date_extension.dart';
import '../../../../core/widget/button/main_button.dart';
import '../../../../data/constant/app_constant.dart';
import '../cubit/event/event_cubit.dart';
import 'event_list_view/event_list_view.dart';

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
    formKey.currentState!.reset();
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
          builder: (_) => BlocProvider.value(
            value: context.read<EventCubit>(),
            child: EventListView(
              city: city.text.trim(),
              startDate: startDate,
              endDate: endDate,
            ),
          ),
        ),
      );
    }
  }

  searchAll() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: context.read<EventCubit>(),
          child: const EventListView(
            city: '',
            startDate: null,
            endDate: null,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(kMediumLargeSpacing),
      children: [
        Align(
          child: Image.asset(
            width: 100.0,
            height: 100.0,
            'assets/images/event.png',
          ),
        ),
        const SizedBox(height: kDefaultSpacing),
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
                        if (startDate == null && endDate == null) {
                          if (value == null || value.isEmpty) {
                            return 'City name is required';
                          }
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
                  startDate == null && endDate == null
                      ? const SizedBox.shrink()
                      : Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: kSmallSpacing),
                          child: Row(
                            children: [
                              Expanded(
                                child: startDate == null
                                    ? const SizedBox.shrink()
                                    : Align(
                                        alignment: Alignment.centerLeft,
                                        child: TextButton.icon(
                                          icon: const Icon(Icons.close),
                                          label: const Text('Clear'),
                                          onPressed: () => setState(() {
                                            startDate = null;
                                          }),
                                        ),
                                      ),
                              ),
                              Expanded(
                                child: endDate == null
                                    ? const SizedBox.shrink()
                                    : Align(
                                        alignment: Alignment.centerLeft,
                                        child: TextButton.icon(
                                          icon: const Icon(Icons.close),
                                          label: const Text('Clear'),
                                          onPressed: () => setState(() {
                                            endDate = null;
                                          }),
                                        ),
                                      ),
                              ),
                            ],
                          ),
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
                  const SizedBox(height: kDefaultSpacing),
                  Align(
                    child: TextButton(
                      child: const Text('All events'),
                      onPressed: () {
                        searchAll();
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
