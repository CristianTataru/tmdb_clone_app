import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tmdb_clone_app/domain/repository/tmdb_repository.dart';
import 'package:tmdb_clone_app/models/movie.dart';
import 'package:tmdb_clone_app/models/movie_details.dart';
import 'package:tmdb_clone_app/models/movie_video.dart';
import 'package:tmdb_clone_app/models/person.dart';
import 'package:tmdb_clone_app/routes/router.dart';
import 'package:tmdb_clone_app/routes/router.gr.dart';

part 'movie_details_event.dart';
part 'movie_details_state.dart';
part 'movie_details_bloc.freezed.dart';

@injectable
class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  MovieDetailsBloc(this.tmdbRepository, this.router) : super(const _MovieDetailsLoadingState()) {
    on<_MovieDetailsOnPageOpenedEvent>(_onMovieDetailsOnPageOpenedEvent);
    on<_MovieDetailsOnPersonTappedEvent>(_onMovieDetailsOnPersonTappedEvent);
  }

  final TMDBRepository tmdbRepository;
  final AppRouter router;

  @factoryMethod
  FutureOr<void> _onMovieDetailsOnPageOpenedEvent(
    _MovieDetailsOnPageOpenedEvent event,
    Emitter<MovieDetailsState> emit,
  ) async {
    emit(const MovieDetailsState.loading());
    List<dynamic> infoList = await Future.wait([
      tmdbRepository.getMovieDetails(event.movie.id),
      tmdbRepository.getMovieCast(event.movie.id),
      tmdbRepository.getMovieTrailers(event.movie.id)
    ]);
    emit(
      MovieDetailsState.loaded(
        movieDetails: infoList[0],
        cast: infoList[1],
        trailers: infoList[2].where((trailer) => trailer.site == "YouTube").toList(),
      ),
    );
  }

  void _onMovieDetailsOnPersonTappedEvent(_MovieDetailsOnPersonTappedEvent event, Emitter<MovieDetailsState> emit) {
    router.push(PersonDetailsRoute(person: event.person));
  }
}
