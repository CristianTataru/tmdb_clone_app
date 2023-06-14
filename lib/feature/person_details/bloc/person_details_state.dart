part of 'person_details_bloc.dart';

@freezed
class PersonDetailsState with _$PersonDetailsState {
  const factory PersonDetailsState.loading() = _PersonDetailsLoadingState;
  const factory PersonDetailsState.loaded({required PersonDetails personDetails}) = _PersonDetailsLoadedState;
}
