import 'package:freezed_annotation/freezed_annotation.dart';
part 'person_details.freezed.dart';
part 'person_details.g.dart';

@freezed
class PersonDetails with _$PersonDetails {
  const factory PersonDetails({
    @JsonKey(name: 'known_for_department') required String? knownFor,
    @JsonKey(name: 'place_of_birth') required String? birthPlace,
    required String? birthday,
    required String? deathday,
    required String? biography,
  }) = _PersonDetails;

  factory PersonDetails.fromJson(Map<String, Object?> json) => _$PersonDetailsFromJson(json);
}
