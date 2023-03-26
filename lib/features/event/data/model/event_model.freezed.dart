// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventModel _$EventModelFromJson(Map<String, dynamic> json) {
  return _EventModel.fromJson(json);
}

/// @nodoc
mixin _$EventModel {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  num get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  String get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'event_picture')
  String get eventPicture => throw _privateConstructorUsedError;
  @JsonKey(name: 'ticket_type')
  TicketTypeModel get ticketType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventModelCopyWith<EventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventModelCopyWith<$Res> {
  factory $EventModelCopyWith(
          EventModel value, $Res Function(EventModel) then) =
      _$EventModelCopyWithImpl<$Res, EventModel>;
  @useResult
  $Res call(
      {String name,
      String description,
      String address,
      num price,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      @JsonKey(name: 'event_picture') String eventPicture,
      @JsonKey(name: 'ticket_type') TicketTypeModel ticketType});

  $TicketTypeModelCopyWith<$Res> get ticketType;
}

/// @nodoc
class _$EventModelCopyWithImpl<$Res, $Val extends EventModel>
    implements $EventModelCopyWith<$Res> {
  _$EventModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? address = null,
    Object? price = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? eventPicture = null,
    Object? ticketType = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      eventPicture: null == eventPicture
          ? _value.eventPicture
          : eventPicture // ignore: cast_nullable_to_non_nullable
              as String,
      ticketType: null == ticketType
          ? _value.ticketType
          : ticketType // ignore: cast_nullable_to_non_nullable
              as TicketTypeModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TicketTypeModelCopyWith<$Res> get ticketType {
    return $TicketTypeModelCopyWith<$Res>(_value.ticketType, (value) {
      return _then(_value.copyWith(ticketType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EventModelCopyWith<$Res>
    implements $EventModelCopyWith<$Res> {
  factory _$$_EventModelCopyWith(
          _$_EventModel value, $Res Function(_$_EventModel) then) =
      __$$_EventModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String address,
      num price,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String endDate,
      @JsonKey(name: 'event_picture') String eventPicture,
      @JsonKey(name: 'ticket_type') TicketTypeModel ticketType});

  @override
  $TicketTypeModelCopyWith<$Res> get ticketType;
}

/// @nodoc
class __$$_EventModelCopyWithImpl<$Res>
    extends _$EventModelCopyWithImpl<$Res, _$_EventModel>
    implements _$$_EventModelCopyWith<$Res> {
  __$$_EventModelCopyWithImpl(
      _$_EventModel _value, $Res Function(_$_EventModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? address = null,
    Object? price = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? eventPicture = null,
    Object? ticketType = null,
  }) {
    return _then(_$_EventModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      eventPicture: null == eventPicture
          ? _value.eventPicture
          : eventPicture // ignore: cast_nullable_to_non_nullable
              as String,
      ticketType: null == ticketType
          ? _value.ticketType
          : ticketType // ignore: cast_nullable_to_non_nullable
              as TicketTypeModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventModel implements _EventModel {
  const _$_EventModel(
      {required this.name,
      required this.description,
      required this.address,
      required this.price,
      @JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'end_date') required this.endDate,
      @JsonKey(name: 'event_picture') required this.eventPicture,
      @JsonKey(name: 'ticket_type') required this.ticketType});

  factory _$_EventModel.fromJson(Map<String, dynamic> json) =>
      _$$_EventModelFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String address;
  @override
  final num price;
  @override
  @JsonKey(name: 'start_date')
  final String startDate;
  @override
  @JsonKey(name: 'end_date')
  final String endDate;
  @override
  @JsonKey(name: 'event_picture')
  final String eventPicture;
  @override
  @JsonKey(name: 'ticket_type')
  final TicketTypeModel ticketType;

  @override
  String toString() {
    return 'EventModel(name: $name, description: $description, address: $address, price: $price, startDate: $startDate, endDate: $endDate, eventPicture: $eventPicture, ticketType: $ticketType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.eventPicture, eventPicture) ||
                other.eventPicture == eventPicture) &&
            (identical(other.ticketType, ticketType) ||
                other.ticketType == ticketType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, address,
      price, startDate, endDate, eventPicture, ticketType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventModelCopyWith<_$_EventModel> get copyWith =>
      __$$_EventModelCopyWithImpl<_$_EventModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventModelToJson(
      this,
    );
  }
}

abstract class _EventModel implements EventModel {
  const factory _EventModel(
      {required final String name,
      required final String description,
      required final String address,
      required final num price,
      @JsonKey(name: 'start_date')
          required final String startDate,
      @JsonKey(name: 'end_date')
          required final String endDate,
      @JsonKey(name: 'event_picture')
          required final String eventPicture,
      @JsonKey(name: 'ticket_type')
          required final TicketTypeModel ticketType}) = _$_EventModel;

  factory _EventModel.fromJson(Map<String, dynamic> json) =
      _$_EventModel.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get address;
  @override
  num get price;
  @override
  @JsonKey(name: 'start_date')
  String get startDate;
  @override
  @JsonKey(name: 'end_date')
  String get endDate;
  @override
  @JsonKey(name: 'event_picture')
  String get eventPicture;
  @override
  @JsonKey(name: 'ticket_type')
  TicketTypeModel get ticketType;
  @override
  @JsonKey(ignore: true)
  _$$_EventModelCopyWith<_$_EventModel> get copyWith =>
      throw _privateConstructorUsedError;
}
