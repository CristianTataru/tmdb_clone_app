part of 'popular_movies_bloc.dart';

@freezed
class PopularMoviesState with _$PopularMoviesState {
  const factory PopularMoviesState.loading() = _PopularMoviesLoadingState;
  const factory PopularMoviesState.loaded({
    required bool canLoadMore,
    required int lastPageLoaded,
    required List<Movie> movies,
  }) = _PopularMoviesLoadedState;
  const factory PopularMoviesState.moreLoading({required List<Movie> movies}) = _PopularMovieMoreLoadingState;
}
