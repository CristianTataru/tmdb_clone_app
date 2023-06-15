import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tmdb_clone_app/main.dart';
import 'package:tmdb_clone_app/models/movie.dart';
import 'package:tmdb_clone_app/models/movies_data.dart';
part 'popular_movies_event.dart';
part 'popular_movies_state.dart';
part 'popular_movies_bloc.freezed.dart';

class PopularMoviesBloc extends Bloc<PopularMoviesEvent, PopularMoviesState> {
  PopularMoviesBloc() : super(const _PopularMoviesLoadingState()) {
    on<_PopularMoviesOnPageOpenedEvent>(_onPopularMoviesOnPageOpenedEvent);
    on<_PopularMoviesMoreDataLoadingEvent>(_onPopularMoviesMoreDataLoadingEvent);
  }

  FutureOr<void> _onPopularMoviesOnPageOpenedEvent(
      _PopularMoviesOnPageOpenedEvent event, Emitter<PopularMoviesState> emit) async {
    emit(const PopularMoviesState.loading());
    MoviesData moviesData = await tmdbRepository.getPaginatedPopularMovies(1);
    emit(PopularMoviesState.loaded(
        canLoadMore: moviesData.totalPages > 1 ? true : false, lastPageLoaded: 1, movies: moviesData.movies));
  }

  FutureOr<void> _onPopularMoviesMoreDataLoadingEvent(
      _PopularMoviesMoreDataLoadingEvent event, Emitter<PopularMoviesState> emit) async {
    await state.whenOrNull(
      loaded: (canLoadMore, lastPageLoaded, movies) async {
        emit(PopularMoviesState.moreLoading(movies: movies));
        int nextPage = lastPageLoaded + 1;
        MoviesData moviesData = await tmdbRepository.getPaginatedPopularMovies(nextPage);
        emit(PopularMoviesState.loaded(
            canLoadMore: moviesData.totalPages > nextPage ? true : false,
            lastPageLoaded: moviesData.totalPages >= nextPage ? nextPage : moviesData.totalPages,
            movies: [...movies, ...moviesData.movies]));
      },
    );
  }
}
