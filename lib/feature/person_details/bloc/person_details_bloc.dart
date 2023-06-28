import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tmdb_clone_app/domain/repository/tmdb_repository.dart';
import 'package:tmdb_clone_app/models/person_details.dart';
import 'package:tmdb_clone_app/models/person.dart';
import 'package:tmdb_clone_app/routes/router.dart';

part 'person_details_event.dart';
part 'person_details_state.dart';
part 'person_details_bloc.freezed.dart';

@injectable
class PersonDetailsBloc extends Bloc<PersonDetailsEvent, PersonDetailsState> {
  PersonDetailsBloc(this.tmdbRepository, this.router) : super(const _PersonDetailsLoadingState()) {
    on<_PersonDetailsOnPageOpenedEvent>(_onPersonDetailsOnPageOpenedEvent);
  }

  final TMDBRepository tmdbRepository;
  final AppRouter router;

  @factoryMethod
  FutureOr<void> _onPersonDetailsOnPageOpenedEvent(
    _PersonDetailsOnPageOpenedEvent event,
    Emitter<PersonDetailsState> emit,
  ) async {
    emit(const PersonDetailsState.loading());
    PersonDetails personDetails = await tmdbRepository.getPersonDetails(event.person.id);
    emit(PersonDetailsState.loaded(personDetails: personDetails));
  }
}
