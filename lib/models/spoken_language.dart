import 'package:freezed_annotation/freezed_annotation.dart';
part 'spoken_language.freezed.dart';
part 'spoken_language.g.dart';

@freezed
class SpokenLanguage with _$SpokenLanguage {
  const factory SpokenLanguage({
    @JsonKey(name: "english_name") required String name,
  }) = _SpokenLanguage;

  factory SpokenLanguage.fromJson(Map<String, Object?> json) => _$SpokenLanguageFromJson(json);
}
