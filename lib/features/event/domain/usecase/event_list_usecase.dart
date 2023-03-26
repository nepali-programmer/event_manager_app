// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:event_manager_app/core/error/app_error.dart';
import 'package:event_manager_app/features/event/domain/entity/event.dart';
import 'package:event_manager_app/features/event/domain/repository/event_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class EventListUsecase {
  final EventRepository eventRepository;
  EventListUsecase({
    required this.eventRepository,
  });
  Future<Either<AppError, List<Event>>> call({
    required String city,
    String? startDate,
    String? endDate,
  }) =>
      eventRepository.eventList(
        city: city,
        startDate: startDate,
        endDate: endDate,
      );
}
