part of 'movie_details_bloc.dart';

@freezed
class MovieDetailsEvent with _$MovieDetailsEvent {
  const factory MovieDetailsEvent.onPageOpened({required Movie movie}) = _MovieDetailsOnPageOpenedEvent;
  const factory MovieDetailsEvent.onPersonTapped({required Person person}) = _MovieDetailsOnPersonTappedEvent;
}
