import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tmdb_clone_app/models/person.dart';
part 'api_response_cast.freezed.dart';
part 'api_response_cast.g.dart';

@freezed
class ApiResponseCast with _$ApiResponseCast {
  const factory ApiResponseCast({
    required List<Person> cast,
  }) = _ApiResponseCast;

  factory ApiResponseCast.fromJson(Map<String, Object?> json) => _$ApiResponseCastFromJson(json);
}
