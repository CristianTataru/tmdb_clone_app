import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tmdb_clone_app/models/api_response.dart';
import 'package:tmdb_clone_app/models/movie.dart';
import 'package:tmdb_clone_app/models/movie_genre.dart';
import 'package:tmdb_clone_app/tmdb_api.dart';
part 'popular_movies_event.dart';
part 'popular_movies_state.dart';
part 'popular_movies_bloc.freezed.dart';

class PopularMoviesBloc extends Bloc<PopularMoviesEvent, PopularMoviesState> {
  PopularMoviesBloc() : super(const _PopularMoviesLoadingState()) {
    on<_PopularMoviesOnPageOpenedEvent>(_onPopularMoviesOnPageOpenedEvent);
    on<_PopularMoviesMoreDataLoadingEvent>(_onPopularMoviesMoreDataLoadingEvent);
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

  Future<ApiResponse> getPaginatedPopularMovies(int page) async {
    ApiResponse response = await tmdbApi.getPopularMovies(page);
    List<Movie> movieList = response.results;
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
    ApiResponse newResponse = ApiResponse(page: response.page, results: listInUse, totalPages: response.totalPages);
    return newResponse;
  }

  FutureOr<void> _onPopularMoviesOnPageOpenedEvent(
      _PopularMoviesOnPageOpenedEvent event, Emitter<PopularMoviesState> emit) async {
    emit(const PopularMoviesState.loading());
    ApiResponse response = await getPaginatedPopularMovies(1);
    emit(PopularMoviesState.loaded(
        canLoadMore: response.totalPages > 1 ? true : false, lastPageLoaded: 1, movies: response.results));
  }

  FutureOr<void> _onPopularMoviesMoreDataLoadingEvent(
      _PopularMoviesMoreDataLoadingEvent event, Emitter<PopularMoviesState> emit) async {
    await state.whenOrNull(
      loaded: (canLoadMore, lastPageLoaded, movies) async {
        emit(PopularMoviesState.moreLoading(movies: movies));
        int nextPage = lastPageLoaded + 1;
        ApiResponse response = await getPaginatedPopularMovies(nextPage);
        emit(PopularMoviesState.loaded(
            canLoadMore: response.totalPages > nextPage ? true : false,
            lastPageLoaded: response.totalPages >= nextPage ? nextPage : response.totalPages,
            movies: [...movies, ...response.results]));
      },
    );
  }
}
