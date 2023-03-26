import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:event_manager_app/core/error/app_error.dart';
import 'package:event_manager_app/features/login/domain/usecase/logout_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:event_manager_app/features/event/domain/usecase/event_list_usecase.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entity/event.dart';

part 'event_cubit.freezed.dart';
part 'event_state.dart';

@injectable
class EventCubit extends Cubit<EventState> {
  final LogoutUsecase logoutUsecase;
  final EventListUsecase eventListUsecase;
  EventCubit(
    this.logoutUsecase,
    this.eventListUsecase,
  ) : super(const EventState.loading());

  eventList({
    required String city,
    String? startDate,
    String? endDate,
  }) async {
    try {
      emit(const EventState.loading());
      Either<AppError, List<Event>> result = await eventListUsecase(
        city: city,
        startDate: startDate,
        endDate: endDate,
      );
      result.fold(
        (l) => emit(const EventState.error()),
        (r) => emit(EventState.loaded(r)),
      );
    } catch (e) {
      emit(const EventState.error());
    }
  }
}
