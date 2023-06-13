// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieVideo _$MovieVideoFromJson(Map<String, dynamic> json) {
  return _MovieVideo.fromJson(json);
}

/// @nodoc
mixin _$MovieVideo {
  String get key => throw _privateConstructorUsedError;
  String get site => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieVideoCopyWith<MovieVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieVideoCopyWith<$Res> {
  factory $MovieVideoCopyWith(
          MovieVideo value, $Res Function(MovieVideo) then) =
      _$MovieVideoCopyWithImpl<$Res, MovieVideo>;
  @useResult
  $Res call({String key, String site});
}

/// @nodoc
class _$MovieVideoCopyWithImpl<$Res, $Val extends MovieVideo>
    implements $MovieVideoCopyWith<$Res> {
  _$MovieVideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? site = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      site: null == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieVideoCopyWith<$Res>
    implements $MovieVideoCopyWith<$Res> {
  factory _$$_MovieVideoCopyWith(
          _$_MovieVideo value, $Res Function(_$_MovieVideo) then) =
      __$$_MovieVideoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String site});
}

/// @nodoc
class __$$_MovieVideoCopyWithImpl<$Res>
    extends _$MovieVideoCopyWithImpl<$Res, _$_MovieVideo>
    implements _$$_MovieVideoCopyWith<$Res> {
  __$$_MovieVideoCopyWithImpl(
      _$_MovieVideo _value, $Res Function(_$_MovieVideo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? site = null,
  }) {
    return _then(_$_MovieVideo(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      site: null == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieVideo implements _MovieVideo {
  const _$_MovieVideo({required this.key, required this.site});

  factory _$_MovieVideo.fromJson(Map<String, dynamic> json) =>
      _$$_MovieVideoFromJson(json);

  @override
  final String key;
  @override
  final String site;

  @override
  String toString() {
    return 'MovieVideo(key: $key, site: $site)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieVideo &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.site, site) || other.site == site));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, site);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieVideoCopyWith<_$_MovieVideo> get copyWith =>
      __$$_MovieVideoCopyWithImpl<_$_MovieVideo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieVideoToJson(
      this,
    );
  }
}

abstract class _MovieVideo implements MovieVideo {
  const factory _MovieVideo(
      {required final String key, required final String site}) = _$_MovieVideo;

  factory _MovieVideo.fromJson(Map<String, dynamic> json) =
      _$_MovieVideo.fromJson;

  @override
  String get key;
  @override
  String get site;
  @override
  @JsonKey(ignore: true)
  _$$_MovieVideoCopyWith<_$_MovieVideo> get copyWith =>
      throw _privateConstructorUsedError;
}
