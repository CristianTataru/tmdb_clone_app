import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tmdb_clone_app/models/movie.dart';
import 'package:tmdb_clone_app/models/movie_genre.dart';
import 'package:tmdb_clone_app/tmdb_api.dart';
part 'tmdb_event.dart';
part 'tmdb_state.dart';
part 'tmdb_bloc.freezed.dart';

class TmdbBloc extends Bloc<TmdbEvent, TmdbState> {
  TmdbBloc() : super(const _TmdbCloneLoadingState()) {
    on<_TmdbCloneOnAppStartedEvent>(_onTmdbCloneOnAppStartedEvent);
  }

  final Dio dio = Dio(
    BaseOptions(
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxYmVmZjk2Y2U0YTgyNzEwODlkNzU4NGM2ZjYzMzg5NCIsInN1YiI6IjU5NTI1MGE5OTI1MTQxMmFjNzAyMjkzOCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.IU7uc8yDqiKXH_uAr9sWzaDGe6lSxzBRQHE-Mp56bZQ',
        "accept": "application/json"
      },
    ),
  );

  late final TMDBApi tmdbApi = TMDBApi(dio);

  FutureOr<void> _onTmdbCloneOnAppStartedEvent(_TmdbCloneOnAppStartedEvent event, Emitter<TmdbState> emit) async {
    emit(const TmdbState.loading());
    List<Movie> firstTenMovies = (await tmdbApi.getPopularMovies(1)).results;
    List<Movie> listInUse = [];
    List<MovieGenre> genres = (await tmdbApi.getMovieGenres()).genres;
    for (int i = 0; i < firstTenMovies.length; i++) {
      List<String> myList = [];
      for (int j = 0; j < genres.length; j++) {
        if (firstTenMovies[i].genreIds.contains(genres[j].id)) {
          myList.add(genres[j].name);
        }
      }
      listInUse.add(firstTenMovies[i].copyWith(genres: myList));
    }
    emit(TmdbState.loaded(popularMovies20: [...listInUse]));
  }
}
