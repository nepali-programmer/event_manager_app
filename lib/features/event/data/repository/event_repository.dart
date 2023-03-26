// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:event_manager_app/features/event/data/model/event_model.dart';
import 'package:event_manager_app/features/event/data/source/event_remote_data_source.dart';

import '../../../../core/error/app_error.dart';
import '../../domain/repository/event_repository.dart';

@LazySingleton(as: EventRepository)
class EventRepositoryImpl implements EventRepository {
  EventRemoteDataSource eventRemoteDataSource;
  EventRepositoryImpl({
    required this.eventRemoteDataSource,
  });
  @override
  Future<Either<AppError, List<EventModel>>> eventList({
    required String city,
    String? startDate,
    String? endDate,
  }) =>
      eventRemoteDataSource.eventList(
        city: city,
        startDate: startDate,
        endDate: endDate,
      );
}
