// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieDetailsEvent {
  Movie get movie => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Movie movie) onPageOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Movie movie)? onPageOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Movie movie)? onPageOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MovieDetailsOnPageOpenedEvent value)
        onPageOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MovieDetailsOnPageOpenedEvent value)? onPageOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieDetailsOnPageOpenedEvent value)? onPageOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailsEventCopyWith<MovieDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsEventCopyWith<$Res> {
  factory $MovieDetailsEventCopyWith(
          MovieDetailsEvent value, $Res Function(MovieDetailsEvent) then) =
      _$MovieDetailsEventCopyWithImpl<$Res, MovieDetailsEvent>;
  @useResult
  $Res call({Movie movie});

  $MovieCopyWith<$Res> get movie;
}

/// @nodoc
class _$MovieDetailsEventCopyWithImpl<$Res, $Val extends MovieDetailsEvent>
    implements $MovieDetailsEventCopyWith<$Res> {
  _$MovieDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
  }) {
    return _then(_value.copyWith(
      movie: null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieCopyWith<$Res> get movie {
    return $MovieCopyWith<$Res>(_value.movie, (value) {
      return _then(_value.copyWith(movie: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MovieDetailsOnPageOpenedEventCopyWith<$Res>
    implements $MovieDetailsEventCopyWith<$Res> {
  factory _$$_MovieDetailsOnPageOpenedEventCopyWith(
          _$_MovieDetailsOnPageOpenedEvent value,
          $Res Function(_$_MovieDetailsOnPageOpenedEvent) then) =
      __$$_MovieDetailsOnPageOpenedEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Movie movie});

  @override
  $MovieCopyWith<$Res> get movie;
}

/// @nodoc
class __$$_MovieDetailsOnPageOpenedEventCopyWithImpl<$Res>
    extends _$MovieDetailsEventCopyWithImpl<$Res,
        _$_MovieDetailsOnPageOpenedEvent>
    implements _$$_MovieDetailsOnPageOpenedEventCopyWith<$Res> {
  __$$_MovieDetailsOnPageOpenedEventCopyWithImpl(
      _$_MovieDetailsOnPageOpenedEvent _value,
      $Res Function(_$_MovieDetailsOnPageOpenedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = null,
  }) {
    return _then(_$_MovieDetailsOnPageOpenedEvent(
      movie: null == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
    ));
  }
}

/// @nodoc

class _$_MovieDetailsOnPageOpenedEvent
    implements _MovieDetailsOnPageOpenedEvent {
  const _$_MovieDetailsOnPageOpenedEvent({required this.movie});

  @override
  final Movie movie;

  @override
  String toString() {
    return 'MovieDetailsEvent.onPageOpened(movie: $movie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieDetailsOnPageOpenedEvent &&
            (identical(other.movie, movie) || other.movie == movie));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movie);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieDetailsOnPageOpenedEventCopyWith<_$_MovieDetailsOnPageOpenedEvent>
      get copyWith => __$$_MovieDetailsOnPageOpenedEventCopyWithImpl<
          _$_MovieDetailsOnPageOpenedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Movie movie) onPageOpened,
  }) {
    return onPageOpened(movie);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Movie movie)? onPageOpened,
  }) {
    return onPageOpened?.call(movie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Movie movie)? onPageOpened,
    required TResult orElse(),
  }) {
    if (onPageOpened != null) {
      return onPageOpened(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MovieDetailsOnPageOpenedEvent value)
        onPageOpened,
  }) {
    return onPageOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MovieDetailsOnPageOpenedEvent value)? onPageOpened,
  }) {
    return onPageOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieDetailsOnPageOpenedEvent value)? onPageOpened,
    required TResult orElse(),
  }) {
    if (onPageOpened != null) {
      return onPageOpened(this);
    }
    return orElse();
  }
}

abstract class _MovieDetailsOnPageOpenedEvent implements MovieDetailsEvent {
  const factory _MovieDetailsOnPageOpenedEvent({required final Movie movie}) =
      _$_MovieDetailsOnPageOpenedEvent;

  @override
  Movie get movie;
  @override
  @JsonKey(ignore: true)
  _$$_MovieDetailsOnPageOpenedEventCopyWith<_$_MovieDetailsOnPageOpenedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MovieDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MovieDetails movieDetails, List<Person> cast)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(MovieDetails movieDetails, List<Person> cast)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MovieDetails movieDetails, List<Person> cast)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MovieDetailsLoadingState value) loading,
    required TResult Function(_MovieDetailsLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MovieDetailsLoadingState value)? loading,
    TResult? Function(_MovieDetailsLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieDetailsLoadingState value)? loading,
    TResult Function(_MovieDetailsLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsStateCopyWith<$Res> {
  factory $MovieDetailsStateCopyWith(
          MovieDetailsState value, $Res Function(MovieDetailsState) then) =
      _$MovieDetailsStateCopyWithImpl<$Res, MovieDetailsState>;
}

/// @nodoc
class _$MovieDetailsStateCopyWithImpl<$Res, $Val extends MovieDetailsState>
    implements $MovieDetailsStateCopyWith<$Res> {
  _$MovieDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MovieDetailsLoadingStateCopyWith<$Res> {
  factory _$$_MovieDetailsLoadingStateCopyWith(
          _$_MovieDetailsLoadingState value,
          $Res Function(_$_MovieDetailsLoadingState) then) =
      __$$_MovieDetailsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MovieDetailsLoadingStateCopyWithImpl<$Res>
    extends _$MovieDetailsStateCopyWithImpl<$Res, _$_MovieDetailsLoadingState>
    implements _$$_MovieDetailsLoadingStateCopyWith<$Res> {
  __$$_MovieDetailsLoadingStateCopyWithImpl(_$_MovieDetailsLoadingState _value,
      $Res Function(_$_MovieDetailsLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MovieDetailsLoadingState implements _MovieDetailsLoadingState {
  const _$_MovieDetailsLoadingState();

  @override
  String toString() {
    return 'MovieDetailsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieDetailsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MovieDetails movieDetails, List<Person> cast)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(MovieDetails movieDetails, List<Person> cast)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MovieDetails movieDetails, List<Person> cast)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MovieDetailsLoadingState value) loading,
    required TResult Function(_MovieDetailsLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MovieDetailsLoadingState value)? loading,
    TResult? Function(_MovieDetailsLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieDetailsLoadingState value)? loading,
    TResult Function(_MovieDetailsLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _MovieDetailsLoadingState implements MovieDetailsState {
  const factory _MovieDetailsLoadingState() = _$_MovieDetailsLoadingState;
}

/// @nodoc
abstract class _$$_MovieDetailsLoadedStateCopyWith<$Res> {
  factory _$$_MovieDetailsLoadedStateCopyWith(_$_MovieDetailsLoadedState value,
          $Res Function(_$_MovieDetailsLoadedState) then) =
      __$$_MovieDetailsLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({MovieDetails movieDetails, List<Person> cast});

  $MovieDetailsCopyWith<$Res> get movieDetails;
}

/// @nodoc
class __$$_MovieDetailsLoadedStateCopyWithImpl<$Res>
    extends _$MovieDetailsStateCopyWithImpl<$Res, _$_MovieDetailsLoadedState>
    implements _$$_MovieDetailsLoadedStateCopyWith<$Res> {
  __$$_MovieDetailsLoadedStateCopyWithImpl(_$_MovieDetailsLoadedState _value,
      $Res Function(_$_MovieDetailsLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieDetails = null,
    Object? cast = null,
  }) {
    return _then(_$_MovieDetailsLoadedState(
      movieDetails: null == movieDetails
          ? _value.movieDetails
          : movieDetails // ignore: cast_nullable_to_non_nullable
              as MovieDetails,
      cast: null == cast
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Person>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieDetailsCopyWith<$Res> get movieDetails {
    return $MovieDetailsCopyWith<$Res>(_value.movieDetails, (value) {
      return _then(_value.copyWith(movieDetails: value));
    });
  }
}

/// @nodoc

class _$_MovieDetailsLoadedState implements _MovieDetailsLoadedState {
  const _$_MovieDetailsLoadedState(
      {required this.movieDetails, required final List<Person> cast})
      : _cast = cast;

  @override
  final MovieDetails movieDetails;
  final List<Person> _cast;
  @override
  List<Person> get cast {
    if (_cast is EqualUnmodifiableListView) return _cast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cast);
  }

  @override
  String toString() {
    return 'MovieDetailsState.loaded(movieDetails: $movieDetails, cast: $cast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieDetailsLoadedState &&
            (identical(other.movieDetails, movieDetails) ||
                other.movieDetails == movieDetails) &&
            const DeepCollectionEquality().equals(other._cast, _cast));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, movieDetails, const DeepCollectionEquality().hash(_cast));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieDetailsLoadedStateCopyWith<_$_MovieDetailsLoadedState>
      get copyWith =>
          __$$_MovieDetailsLoadedStateCopyWithImpl<_$_MovieDetailsLoadedState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MovieDetails movieDetails, List<Person> cast)
        loaded,
  }) {
    return loaded(movieDetails, cast);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(MovieDetails movieDetails, List<Person> cast)? loaded,
  }) {
    return loaded?.call(movieDetails, cast);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MovieDetails movieDetails, List<Person> cast)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(movieDetails, cast);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MovieDetailsLoadingState value) loading,
    required TResult Function(_MovieDetailsLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MovieDetailsLoadingState value)? loading,
    TResult? Function(_MovieDetailsLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieDetailsLoadingState value)? loading,
    TResult Function(_MovieDetailsLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _MovieDetailsLoadedState implements MovieDetailsState {
  const factory _MovieDetailsLoadedState(
      {required final MovieDetails movieDetails,
      required final List<Person> cast}) = _$_MovieDetailsLoadedState;

  MovieDetails get movieDetails;
  List<Person> get cast;
  @JsonKey(ignore: true)
  _$$_MovieDetailsLoadedStateCopyWith<_$_MovieDetailsLoadedState>
      get copyWith => throw _privateConstructorUsedError;
}
