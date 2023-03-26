// ignore_for_file: invalid_annotation_target

import 'package:event_manager_app/features/event/data/model/ticket_type_model.dart';

import '../../domain/entity/event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_model.freezed.dart';
part 'event_model.g.dart';

@freezed
class EventModel extends Event with _$EventModel {
  const factory EventModel({
    required String name,
    required String description,
    required String address,
    required num price,
    @JsonKey(name: 'start_date') required String startDate,
    @JsonKey(name: 'end_date') required String endDate,
    @JsonKey(name: 'event_picture') required String eventPicture,
    @JsonKey(name: 'ticket_type') required TicketTypeModel ticketType,
  }) = _EventModel;

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);
}
