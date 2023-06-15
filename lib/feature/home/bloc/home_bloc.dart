import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tmdb_clone_app/main.dart';
import 'package:tmdb_clone_app/models/movie.dart';
import 'package:tmdb_clone_app/models/movie_genre.dart';
import 'package:tmdb_clone_app/models/movies_data.dart';
import 'package:tmdb_clone_app/routes/router.gr.dart';
part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const _HomeLoadingState()) {
    on<_HomeOnAppStartedEvent>(_onHomeOnAppStartedEvent);
    on<_HomeOnPopularMoviesPageOpenedEvent>(_onHomeOnPopularMoviesPageOpenedEvent);
    on<_HomeOnTrendingMoviesPageOpenedEvent>(_onHomeOnTrendingMoviesPageOpenedEvent);
    on<_HomeOnMovieTappedEvent>(_onHomeOnMovieTappedEvent);
  }

  Future<List<Movie>> addMovieGenres(List<Movie> movieList) async {
    List<MovieGenre> genreList = (await tmdbRepository.getMovieGenres());
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
    List<MoviesData> responseList =
        await Future.wait([tmdbRepository.getPaginatedPopularMovies(1), tmdbRepository.getPaginatedTrendingMovies(1)]);
    List<List<Movie>> moviesLists =
        await Future.wait([addMovieGenres(responseList[0].movies), addMovieGenres(responseList[1].movies)]);
    emit(HomeState.loaded(popularMovies: moviesLists[0], trendingMovies: moviesLists[1]));
  }

  void _onHomeOnPopularMoviesPageOpenedEvent(_HomeOnPopularMoviesPageOpenedEvent event, Emitter<HomeState> emit) {
    router.push(const PopularMoviesRoute());
  }

  void _onHomeOnTrendingMoviesPageOpenedEvent(_HomeOnTrendingMoviesPageOpenedEvent event, Emitter<HomeState> emit) {
    router.push(const TrendingMoviesRoute());
  }

  void _onHomeOnMovieTappedEvent(_HomeOnMovieTappedEvent event, Emitter<HomeState> emit) {
    router.push(MovieDetailsRoute(movie: event.movie));
  }
}
