// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_movie_video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponseMovieVideo _$ApiResponseMovieVideoFromJson(
    Map<String, dynamic> json) {
  return _ApiResponseMovieVideo.fromJson(json);
}

/// @nodoc
mixin _$ApiResponseMovieVideo {
  List<MovieVideo> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseMovieVideoCopyWith<ApiResponseMovieVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseMovieVideoCopyWith<$Res> {
  factory $ApiResponseMovieVideoCopyWith(ApiResponseMovieVideo value,
          $Res Function(ApiResponseMovieVideo) then) =
      _$ApiResponseMovieVideoCopyWithImpl<$Res, ApiResponseMovieVideo>;
  @useResult
  $Res call({List<MovieVideo> results});
}

/// @nodoc
class _$ApiResponseMovieVideoCopyWithImpl<$Res,
        $Val extends ApiResponseMovieVideo>
    implements $ApiResponseMovieVideoCopyWith<$Res> {
  _$ApiResponseMovieVideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieVideo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiResponseMovieVideoCopyWith<$Res>
    implements $ApiResponseMovieVideoCopyWith<$Res> {
  factory _$$_ApiResponseMovieVideoCopyWith(_$_ApiResponseMovieVideo value,
          $Res Function(_$_ApiResponseMovieVideo) then) =
      __$$_ApiResponseMovieVideoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MovieVideo> results});
}

/// @nodoc
class __$$_ApiResponseMovieVideoCopyWithImpl<$Res>
    extends _$ApiResponseMovieVideoCopyWithImpl<$Res, _$_ApiResponseMovieVideo>
    implements _$$_ApiResponseMovieVideoCopyWith<$Res> {
  __$$_ApiResponseMovieVideoCopyWithImpl(_$_ApiResponseMovieVideo _value,
      $Res Function(_$_ApiResponseMovieVideo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$_ApiResponseMovieVideo(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieVideo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiResponseMovieVideo implements _ApiResponseMovieVideo {
  const _$_ApiResponseMovieVideo({required final List<MovieVideo> results})
      : _results = results;

  factory _$_ApiResponseMovieVideo.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResponseMovieVideoFromJson(json);

  final List<MovieVideo> _results;
  @override
  List<MovieVideo> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'ApiResponseMovieVideo(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponseMovieVideo &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseMovieVideoCopyWith<_$_ApiResponseMovieVideo> get copyWith =>
      __$$_ApiResponseMovieVideoCopyWithImpl<_$_ApiResponseMovieVideo>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResponseMovieVideoToJson(
      this,
    );
  }
}

abstract class _ApiResponseMovieVideo implements ApiResponseMovieVideo {
  const factory _ApiResponseMovieVideo(
      {required final List<MovieVideo> results}) = _$_ApiResponseMovieVideo;

  factory _ApiResponseMovieVideo.fromJson(Map<String, dynamic> json) =
      _$_ApiResponseMovieVideo.fromJson;

  @override
  List<MovieVideo> get results;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseMovieVideoCopyWith<_$_ApiResponseMovieVideo> get copyWith =>
      throw _privateConstructorUsedError;
}
