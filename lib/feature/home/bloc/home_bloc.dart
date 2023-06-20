import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tmdb_clone_app/main.dart';
import 'package:tmdb_clone_app/models/movie.dart';
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

  FutureOr<void> _onHomeOnAppStartedEvent(_HomeOnAppStartedEvent event, Emitter<HomeState> emit) async {
    emit(const HomeState.loading());
    List<MoviesData> responseList =
        await Future.wait([tmdbRepository.getPaginatedPopularMovies(1), tmdbRepository.getPaginatedTrendingMovies(1)]);

    emit(HomeState.loaded(popularMovies: responseList[0].movies, trendingMovies: responseList[1].movies));
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
