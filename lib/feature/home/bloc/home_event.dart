part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.onAppStarted() = _HomeOnAppStartedEvent;
  const factory HomeEvent.onPopularMoviesPageOpened() = _HomeOnPopularMoviesPageOpenedEvent;
  const factory HomeEvent.onTrendingMoviesPageOpened() = _HomeOnTrendingMoviesPageOpenedEvent;
}
