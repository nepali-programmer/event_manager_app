// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventModel _$$_EventModelFromJson(Map<String, dynamic> json) =>
    _$_EventModel(
      name: json['name'] as String,
      description: json['description'] as String,
      address: json['address'] as String,
      price: json['price'] as num,
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      eventPicture: json['event_picture'] as String,
      ticketType:
          TicketTypeModel.fromJson(json['ticket_type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EventModelToJson(_$_EventModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'address': instance.address,
      'price': instance.price,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'event_picture': instance.eventPicture,
      'ticket_type': instance.ticketType,
    };
