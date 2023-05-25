part of 'tmdb_bloc.dart';

@freezed
class TmdbEvent with _$TmdbEvent {
  const factory TmdbEvent.onAppStarted() = _TmdbCloneOnAppStartedEvent;
}
