part of 'tmdb_bloc.dart';

@freezed
class TmdbState with _$TmdbState {
  const factory TmdbState.loading() = _TmdbCloneLoadingState;
  const factory TmdbState.loaded({required List<Movie> popularMovies20}) = _TmdbCloneLoadedState;
}
