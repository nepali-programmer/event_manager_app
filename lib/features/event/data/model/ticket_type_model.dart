// ignore_for_file: invalid_annotation_target
import 'package:event_manager_app/features/event/domain/entity/ticket_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_type_model.freezed.dart';
part 'ticket_type_model.g.dart';

@freezed
class TicketTypeModel extends TicketType with _$TicketTypeModel {
  const factory TicketTypeModel({
    required String name,
  }) = _TicketTypeModel;

  factory TicketTypeModel.fromJson(Map<String, dynamic> json) =>
      _$TicketTypeModelFromJson(json);
}
