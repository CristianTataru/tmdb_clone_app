import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tmdb_clone_app/models/api_response.dart';
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
    on<_HomeOnTrendingMoviesPageOpenedEvent>(_onHomeOnTrendingMoviesPageOpenedEvent);
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

  Future<List<Movie>> addMovieGenres(List<Movie> movieList) async {
    List<MovieGenre> genreList = (await tmdbApi.getMovieGenres()).genres;
    List<Movie> finalMovieList = [];
    for (int i = 0; i < movieList.length; i++) {
      List<String> myList = [];
      for (int j = 0; j < genreList.length; j++) {
        if (movieList[i].genreIds.contains(genreList[j].id)) {
          myList.add(genreList[j].name);
        }
      }
      finalMovieList.add(movieList[i].copyWith(genres: myList));
    }
    return finalMovieList;
  }

  FutureOr<void> _onHomeOnAppStartedEvent(_HomeOnAppStartedEvent event, Emitter<HomeState> emit) async {
    emit(const HomeState.loading());
    List<ApiResponse> responseList = await Future.wait([tmdbApi.getPopularMovies(1), tmdbApi.getTrendingMovies(1)]);
    List<List<Movie>> moviesLists =
        await Future.wait([addMovieGenres(responseList[0].results), addMovieGenres(responseList[1].results)]);
    emit(HomeState.loaded(popularMovies: moviesLists[0], trendingMovies: moviesLists[1]));
  }

  _onHomeOnPopularMoviesPageOpenedEvent(_HomeOnPopularMoviesPageOpenedEvent event, Emitter<HomeState> emit) {}

  _onHomeOnTrendingMoviesPageOpenedEvent(_HomeOnTrendingMoviesPageOpenedEvent event, Emitter<HomeState> emit) {}
}
