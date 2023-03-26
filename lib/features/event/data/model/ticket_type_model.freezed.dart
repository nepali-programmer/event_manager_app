// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TicketTypeModel _$TicketTypeModelFromJson(Map<String, dynamic> json) {
  return _TicketTypeModel.fromJson(json);
}

/// @nodoc
mixin _$TicketTypeModel {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketTypeModelCopyWith<TicketTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketTypeModelCopyWith<$Res> {
  factory $TicketTypeModelCopyWith(
          TicketTypeModel value, $Res Function(TicketTypeModel) then) =
      _$TicketTypeModelCopyWithImpl<$Res, TicketTypeModel>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$TicketTypeModelCopyWithImpl<$Res, $Val extends TicketTypeModel>
    implements $TicketTypeModelCopyWith<$Res> {
  _$TicketTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TicketTypeModelCopyWith<$Res>
    implements $TicketTypeModelCopyWith<$Res> {
  factory _$$_TicketTypeModelCopyWith(
          _$_TicketTypeModel value, $Res Function(_$_TicketTypeModel) then) =
      __$$_TicketTypeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_TicketTypeModelCopyWithImpl<$Res>
    extends _$TicketTypeModelCopyWithImpl<$Res, _$_TicketTypeModel>
    implements _$$_TicketTypeModelCopyWith<$Res> {
  __$$_TicketTypeModelCopyWithImpl(
      _$_TicketTypeModel _value, $Res Function(_$_TicketTypeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_TicketTypeModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TicketTypeModel implements _TicketTypeModel {
  const _$_TicketTypeModel({required this.name});

  factory _$_TicketTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_TicketTypeModelFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'TicketTypeModel(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketTypeModel &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketTypeModelCopyWith<_$_TicketTypeModel> get copyWith =>
      __$$_TicketTypeModelCopyWithImpl<_$_TicketTypeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketTypeModelToJson(
      this,
    );
  }
}

abstract class _TicketTypeModel implements TicketTypeModel {
  const factory _TicketTypeModel({required final String name}) =
      _$_TicketTypeModel;

  factory _TicketTypeModel.fromJson(Map<String, dynamic> json) =
      _$_TicketTypeModel.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_TicketTypeModelCopyWith<_$_TicketTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
