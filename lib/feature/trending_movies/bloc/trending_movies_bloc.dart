import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tmdb_clone_app/domain/repository/tmdb_repository.dart';
import 'package:tmdb_clone_app/models/movie.dart';
import 'package:tmdb_clone_app/models/movies_data.dart';
part 'trending_movies_event.dart';
part 'trending_movies_state.dart';
part 'trending_movies_bloc.freezed.dart';

@injectable
class TrendingMoviesBloc extends Bloc<TrendingMoviesEvent, TrendingMoviesState> {
  TrendingMoviesBloc(this.tmdbRepository) : super(const _TrendingMoviesLoadingState()) {
    on<_TrendingMoviesOnPageOpenedEvent>(_onTrendingMoviesOnPageOpenedEvent);
    on<_TrendingMoviesMoreDataLoadingEvent>(_onTrendingMoviesMoreDataLoadingEvent);
    add(const TrendingMoviesEvent.onPageOpened());
  }

  final TMDBRepository tmdbRepository;

  @factoryMethod
  FutureOr<void> _onTrendingMoviesOnPageOpenedEvent(
      _TrendingMoviesOnPageOpenedEvent event, Emitter<TrendingMoviesState> emit) async {
    emit(const TrendingMoviesState.loading());
    MoviesData moviesData = await tmdbRepository.getPaginatedTrendingMovies(1);
    emit(TrendingMoviesState.loaded(
        canLoadMore: moviesData.totalPages > 1 ? true : false, lastPageLoaded: 1, movies: moviesData.movies));
  }

  @factoryMethod
  FutureOr<void> _onTrendingMoviesMoreDataLoadingEvent(
      _TrendingMoviesMoreDataLoadingEvent event, Emitter<TrendingMoviesState> emit) async {
    await state.whenOrNull(
      loaded: (canLoadMore, lastPageLoaded, movies) async {
        emit(TrendingMoviesState.moreLoading(movies: movies));
        int nextPage = lastPageLoaded + 1;
        MoviesData moviesData = await tmdbRepository.getPaginatedTrendingMovies(nextPage);
        emit(TrendingMoviesState.loaded(
            canLoadMore: moviesData.totalPages > nextPage ? true : false,
            lastPageLoaded: moviesData.totalPages >= nextPage ? nextPage : moviesData.totalPages,
            movies: [...movies, ...moviesData.movies]));
      },
    );
  }
}
