// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'ticket_type.dart';

class Event {
  final String name;
  final String description;
  final String address;
  final String startDate;
  final String endDate;
  final String eventPicture;
  final num price;
  final TicketType ticketType;
  Event({
    required this.name,
    required this.description,
    required this.address,
    required this.startDate,
    required this.endDate,
    required this.eventPicture,
    required this.price,
    required this.ticketType,
  });
}
