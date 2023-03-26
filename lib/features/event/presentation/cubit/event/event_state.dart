part of 'event_cubit.dart';

@freezed
class EventState with _$EventState {
  const factory EventState.loading() = _Loading;
  const factory EventState.error() = _Error;
  const factory EventState.loaded(List<Event> events) = _Loaded;
}
