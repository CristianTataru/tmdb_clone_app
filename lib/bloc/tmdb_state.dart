part of 'tmdb_bloc.dart';

@freezed
class TmdbState with _$TmdbState {
  const factory TmdbState.loading() = _TmdbLoadingState;
  const factory TmdbState.loaded({required List<Movie> popularMovies20}) = _TmdbLoadedState;
}
