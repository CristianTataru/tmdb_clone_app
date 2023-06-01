import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tmdb_clone_app/models/movie.dart';
import 'package:tmdb_clone_app/models/movie_genre.dart';
import 'package:tmdb_clone_app/tmdb_api.dart';
part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const _HomeLoadingState()) {
    on<_HomeOnAppStartedEvent>(_onHomeOnAppStartedEvent);
    on<_HomeOnPopularMoviesPageOpenedEvent>(_onHomeOnPopularMoviesPageOpenedEvent);
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

  Future<List<Movie>> addMovieGenres(int page) async {
    List<Movie> movieList = (await tmdbApi.getPopularMovies(page)).results;
    List<MovieGenre> genreList = (await tmdbApi.getMovieGenres()).genres;
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

  FutureOr<void> _onHomeOnAppStartedEvent(_HomeOnAppStartedEvent event, Emitter<HomeState> emit) async {
    emit(const HomeState.loading());
    List<Movie> firstTwentyMovies = await addMovieGenres(1);
    emit(HomeState.loaded(popularMovies: firstTwentyMovies));
  }

  _onHomeOnPopularMoviesPageOpenedEvent(_HomeOnPopularMoviesPageOpenedEvent event, Emitter<HomeState> emit) {}
}
