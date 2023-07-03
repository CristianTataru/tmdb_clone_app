part of 'trending_movies_bloc.dart';

@freezed
class TrendingMoviesEvent with _$TrendingMoviesEvent {
  const factory TrendingMoviesEvent.onPageOpened() = _TrendingMoviesOnPageOpenedEvent;
  const factory TrendingMoviesEvent.onMoreDataLoading() = _TrendingMoviesMoreDataLoadingEvent;
  const factory TrendingMoviesEvent.onMovieTapped({required Movie movie}) = _TrendingMoviesOnMovieTappedEvent;
}
