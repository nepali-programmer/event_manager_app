import 'package:dartz/dartz.dart';

import '../../../../core/error/app_error.dart';
import '../entity/event.dart';

abstract class EventRepository {
  Future<Either<AppError, List<Event>>> eventList({
    required String city,
    String? startDate,
    String? endDate,
  });
}
