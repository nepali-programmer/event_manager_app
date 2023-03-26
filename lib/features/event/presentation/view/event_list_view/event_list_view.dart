// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:event_manager_app/core/extension/date_extension.dart';
import 'package:event_manager_app/features/event/presentation/cubit/event/event_cubit.dart';
import 'package:event_manager_app/features/event/presentation/view/event_list_view/event_list_error.dart';
import 'package:event_manager_app/features/event/presentation/view/event_list_view/event_list_loaded.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'event_list_loading.dart';

class EventListView extends StatefulWidget {
  final String city;
  final DateTime? startDate;
  final DateTime? endDate;
  const EventListView({
    Key? key,
    required this.city,
    this.startDate,
    this.endDate,
  }) : super(key: key);

  @override
  State<EventListView> createState() => _EventListViewState();
}

class _EventListViewState extends State<EventListView> {
  getData() {
    String? startDateString =
        widget.startDate == null ? null : widget.startDate!.dateWithDash();
    String? endDateString =
        widget.endDate == null ? null : widget.endDate!.dateWithDash();
    context.read<EventCubit>().eventList(
          city: widget.city,
          startDate: startDateString,
          endDate: endDateString,
        );
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event list'),
        centerTitle: true,
      ),
      body: BlocBuilder<EventCubit, EventState>(
        builder: (context, state) {
          return state.when(
            loading: () => const EventListLoading(),
            error: () => EventListError(
              onRefresh: () => getData(),
            ),
            loaded: (events) => EventListLoaded(events: events),
          );
        },
      ),
    );
  }
}
