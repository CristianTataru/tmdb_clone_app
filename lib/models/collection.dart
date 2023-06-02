import 'package:freezed_annotation/freezed_annotation.dart';
part 'collection.freezed.dart';
part 'collection.g.dart';

@freezed
class Collection with _$Collection {
  const factory Collection({
    required int id,
    required String name,
    @JsonKey(name: 'poster_path') required String posterPath,
    @JsonKey(name: "backdrop_path") required String backgroundPosterPath,
  }) = _Collection;

  factory Collection.fromJson(Map<String, Object?> json) => _$CollectionFromJson(json);
}
