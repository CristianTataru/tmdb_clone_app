part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = _HomeLoadingState;
  const factory HomeState.loaded({
    required List<Movie> popularMovies,
    required List<Movie> trendingMovies,
  }) = _HomeLoadedState;
}
