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
  TmdbBloc() : super(const _TmdbLoadingState()) {
    on<_TmdbOnAppStartedEvent>(_onTmdbOnAppStartedEvent);
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

  List<Movie> addMovieGenres(List<Movie> movieList, List<MovieGenre> genreList) {
    List<Movie> listInUse = [];
    for (int i = 0; i < movieList.length; i++) {
      List<String> myList = [];
      for (int j = 0; j < genreList.length; j++) {
        if (movieList[i].genreIds.contains(genreList[j].id)) {
          myList.add(genreList[j].name);
        }
      }
      listInUse.add(movieList[i].copyWith(genres: myList));
    }
    return listInUse;
  }

  FutureOr<void> _onTmdbOnAppStartedEvent(_TmdbOnAppStartedEvent event, Emitter<TmdbState> emit) async {
    emit(const TmdbState.loading());
    List<Movie> firstTenMovies = (await tmdbApi.getPopularMovies(1)).results;
    List<MovieGenre> genres = (await tmdbApi.getMovieGenres()).genres;
    emit(TmdbState.loaded(popularMovies20: [...addMovieGenres(firstTenMovies, genres)]));
  }
}
