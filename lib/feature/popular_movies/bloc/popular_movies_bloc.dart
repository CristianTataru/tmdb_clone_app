import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tmdb_clone_app/domain/repository/tmdb_repository.dart';
import 'package:tmdb_clone_app/models/movie.dart';
import 'package:tmdb_clone_app/models/movies_data.dart';

part 'popular_movies_event.dart';
part 'popular_movies_state.dart';
part 'popular_movies_bloc.freezed.dart';

@injectable
class PopularMoviesBloc extends Bloc<PopularMoviesEvent, PopularMoviesState> {
  PopularMoviesBloc(this.tmdbRepository) : super(const _PopularMoviesLoadingState()) {
    on<_PopularMoviesOnPageOpenedEvent>(_onPopularMoviesOnPageOpenedEvent);
    on<_PopularMoviesMoreDataLoadingEvent>(_onPopularMoviesMoreDataLoadingEvent);
    add(const PopularMoviesEvent.onPageOpened());
  }

  final TMDBRepository tmdbRepository;

  @factoryMethod
  FutureOr<void> _onPopularMoviesOnPageOpenedEvent(
      _PopularMoviesOnPageOpenedEvent event, Emitter<PopularMoviesState> emit) async {
    emit(const PopularMoviesState.loading());
    MoviesData moviesData = await tmdbRepository.getPaginatedPopularMovies(1);
    emit(PopularMoviesState.loaded(
        canLoadMore: moviesData.totalPages > 1 ? true : false, lastPageLoaded: 1, movies: moviesData.movies));
  }

  @factoryMethod
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
