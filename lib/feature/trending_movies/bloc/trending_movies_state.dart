part of 'trending_movies_bloc.dart';

@freezed
class TrendingMoviesState with _$TrendingMoviesState {
  const factory TrendingMoviesState.loading() = _TrendingMoviesLoadingState;
  const factory TrendingMoviesState.loaded({
    required bool canLoadMore,
    required int lastPageLoaded,
    required List<Movie> movies,
  }) = _TrendingMoviesLoadedState;
  const factory TrendingMoviesState.moreLoading({required List<Movie> movies}) = _TrendingMovieMoreLoadingState;
}
