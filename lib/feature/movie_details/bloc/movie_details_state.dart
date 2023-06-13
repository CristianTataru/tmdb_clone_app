part of 'movie_details_bloc.dart';

@freezed
class MovieDetailsState with _$MovieDetailsState {
  const factory MovieDetailsState.loading() = _MovieDetailsLoadingState;
  const factory MovieDetailsState.loaded({
    required MovieDetails movieDetails,
    required List<Person> cast,
    required List<MovieVideo> trailers,
  }) = _MovieDetailsLoadedState;
}
