part of 'popular_movies_bloc.dart';

@freezed
class PopularMoviesEvent with _$PopularMoviesEvent {
  const factory PopularMoviesEvent.onPageOpened() = _PopularMoviesOnPageOpenedEvent;
  const factory PopularMoviesEvent.onMoreDataLoading() = _PopularMoviesMoreDataLoadingEvent;
  const factory PopularMoviesEvent.onMovieTapped({required Movie movie}) = _PopularMoviesOnMovieTappedEvent;
}
