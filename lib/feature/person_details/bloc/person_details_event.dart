part of 'person_details_bloc.dart';

@freezed
class PersonDetailsEvent with _$PersonDetailsEvent {
  const factory PersonDetailsEvent.onPageOpened({required Person person}) = _PersonDetailsOnPageOpenedEvent;
}
