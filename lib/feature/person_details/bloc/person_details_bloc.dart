import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tmdb_clone_app/models/person_details.dart';
import 'package:tmdb_clone_app/models/person.dart';
import 'package:tmdb_clone_app/tmdb_api.dart';

part 'person_details_event.dart';
part 'person_details_state.dart';
part 'person_details_bloc.freezed.dart';

class PersonDetailsBloc extends Bloc<PersonDetailsEvent, PersonDetailsState> {
  PersonDetailsBloc() : super(const _PersonDetailsLoadingState()) {
    on<_PersonDetailsOnPageOpenedEvent>(_onPersonDetailsOnPageOpenedEvent);
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

  FutureOr<void> _onPersonDetailsOnPageOpenedEvent(
    _PersonDetailsOnPageOpenedEvent event,
    Emitter<PersonDetailsState> emit,
  ) async {
    emit(const PersonDetailsState.loading());
    PersonDetails personDetails = await tmdbApi.getPersonDetails(event.person.id);
    emit(PersonDetailsState.loaded(personDetails: personDetails));
  }
}
