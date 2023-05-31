// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_genres.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponseGenres _$ApiResponseGenresFromJson(Map<String, dynamic> json) {
  return _ApiResponseGenres.fromJson(json);
}

/// @nodoc
mixin _$ApiResponseGenres {
  List<MovieGenre> get genres => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseGenresCopyWith<ApiResponseGenres> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseGenresCopyWith<$Res> {
  factory $ApiResponseGenresCopyWith(
          ApiResponseGenres value, $Res Function(ApiResponseGenres) then) =
      _$ApiResponseGenresCopyWithImpl<$Res, ApiResponseGenres>;
  @useResult
  $Res call({List<MovieGenre> genres});
}

/// @nodoc
class _$ApiResponseGenresCopyWithImpl<$Res, $Val extends ApiResponseGenres>
    implements $ApiResponseGenresCopyWith<$Res> {
  _$ApiResponseGenresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genres = null,
  }) {
    return _then(_value.copyWith(
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<MovieGenre>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiResponseGenresCopyWith<$Res>
    implements $ApiResponseGenresCopyWith<$Res> {
  factory _$$_ApiResponseGenresCopyWith(_$_ApiResponseGenres value,
          $Res Function(_$_ApiResponseGenres) then) =
      __$$_ApiResponseGenresCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MovieGenre> genres});
}

/// @nodoc
class __$$_ApiResponseGenresCopyWithImpl<$Res>
    extends _$ApiResponseGenresCopyWithImpl<$Res, _$_ApiResponseGenres>
    implements _$$_ApiResponseGenresCopyWith<$Res> {
  __$$_ApiResponseGenresCopyWithImpl(
      _$_ApiResponseGenres _value, $Res Function(_$_ApiResponseGenres) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genres = null,
  }) {
    return _then(_$_ApiResponseGenres(
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<MovieGenre>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiResponseGenres implements _ApiResponseGenres {
  const _$_ApiResponseGenres({required final List<MovieGenre> genres})
      : _genres = genres;

  factory _$_ApiResponseGenres.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResponseGenresFromJson(json);

  final List<MovieGenre> _genres;
  @override
  List<MovieGenre> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  String toString() {
    return 'ApiResponseGenres(genres: $genres)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponseGenres &&
            const DeepCollectionEquality().equals(other._genres, _genres));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_genres));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseGenresCopyWith<_$_ApiResponseGenres> get copyWith =>
      __$$_ApiResponseGenresCopyWithImpl<_$_ApiResponseGenres>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResponseGenresToJson(
      this,
    );
  }
}

abstract class _ApiResponseGenres implements ApiResponseGenres {
  const factory _ApiResponseGenres({required final List<MovieGenre> genres}) =
      _$_ApiResponseGenres;

  factory _ApiResponseGenres.fromJson(Map<String, dynamic> json) =
      _$_ApiResponseGenres.fromJson;

  @override
  List<MovieGenre> get genres;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseGenresCopyWith<_$_ApiResponseGenres> get copyWith =>
      throw _privateConstructorUsedError;
}
