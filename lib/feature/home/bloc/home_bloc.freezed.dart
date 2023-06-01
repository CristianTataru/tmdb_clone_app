// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAppStarted,
    required TResult Function() onPopularMoviesPageOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppStarted,
    TResult? Function()? onPopularMoviesPageOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppStarted,
    TResult Function()? onPopularMoviesPageOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeOnAppStartedEvent value) onAppStarted,
    required TResult Function(_HomeOnPopularMoviesPageOpenedEvent value)
        onPopularMoviesPageOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeOnAppStartedEvent value)? onAppStarted,
    TResult? Function(_HomeOnPopularMoviesPageOpenedEvent value)?
        onPopularMoviesPageOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeOnAppStartedEvent value)? onAppStarted,
    TResult Function(_HomeOnPopularMoviesPageOpenedEvent value)?
        onPopularMoviesPageOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_HomeOnAppStartedEventCopyWith<$Res> {
  factory _$$_HomeOnAppStartedEventCopyWith(_$_HomeOnAppStartedEvent value,
          $Res Function(_$_HomeOnAppStartedEvent) then) =
      __$$_HomeOnAppStartedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomeOnAppStartedEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_HomeOnAppStartedEvent>
    implements _$$_HomeOnAppStartedEventCopyWith<$Res> {
  __$$_HomeOnAppStartedEventCopyWithImpl(_$_HomeOnAppStartedEvent _value,
      $Res Function(_$_HomeOnAppStartedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HomeOnAppStartedEvent implements _HomeOnAppStartedEvent {
  const _$_HomeOnAppStartedEvent();

  @override
  String toString() {
    return 'HomeEvent.onAppStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HomeOnAppStartedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAppStarted,
    required TResult Function() onPopularMoviesPageOpened,
  }) {
    return onAppStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppStarted,
    TResult? Function()? onPopularMoviesPageOpened,
  }) {
    return onAppStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppStarted,
    TResult Function()? onPopularMoviesPageOpened,
    required TResult orElse(),
  }) {
    if (onAppStarted != null) {
      return onAppStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeOnAppStartedEvent value) onAppStarted,
    required TResult Function(_HomeOnPopularMoviesPageOpenedEvent value)
        onPopularMoviesPageOpened,
  }) {
    return onAppStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeOnAppStartedEvent value)? onAppStarted,
    TResult? Function(_HomeOnPopularMoviesPageOpenedEvent value)?
        onPopularMoviesPageOpened,
  }) {
    return onAppStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeOnAppStartedEvent value)? onAppStarted,
    TResult Function(_HomeOnPopularMoviesPageOpenedEvent value)?
        onPopularMoviesPageOpened,
    required TResult orElse(),
  }) {
    if (onAppStarted != null) {
      return onAppStarted(this);
    }
    return orElse();
  }
}

abstract class _HomeOnAppStartedEvent implements HomeEvent {
  const factory _HomeOnAppStartedEvent() = _$_HomeOnAppStartedEvent;
}

/// @nodoc
abstract class _$$_HomeOnPopularMoviesPageOpenedEventCopyWith<$Res> {
  factory _$$_HomeOnPopularMoviesPageOpenedEventCopyWith(
          _$_HomeOnPopularMoviesPageOpenedEvent value,
          $Res Function(_$_HomeOnPopularMoviesPageOpenedEvent) then) =
      __$$_HomeOnPopularMoviesPageOpenedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomeOnPopularMoviesPageOpenedEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_HomeOnPopularMoviesPageOpenedEvent>
    implements _$$_HomeOnPopularMoviesPageOpenedEventCopyWith<$Res> {
  __$$_HomeOnPopularMoviesPageOpenedEventCopyWithImpl(
      _$_HomeOnPopularMoviesPageOpenedEvent _value,
      $Res Function(_$_HomeOnPopularMoviesPageOpenedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HomeOnPopularMoviesPageOpenedEvent
    implements _HomeOnPopularMoviesPageOpenedEvent {
  const _$_HomeOnPopularMoviesPageOpenedEvent();

  @override
  String toString() {
    return 'HomeEvent.onPopularMoviesPageOpened()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeOnPopularMoviesPageOpenedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAppStarted,
    required TResult Function() onPopularMoviesPageOpened,
  }) {
    return onPopularMoviesPageOpened();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppStarted,
    TResult? Function()? onPopularMoviesPageOpened,
  }) {
    return onPopularMoviesPageOpened?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppStarted,
    TResult Function()? onPopularMoviesPageOpened,
    required TResult orElse(),
  }) {
    if (onPopularMoviesPageOpened != null) {
      return onPopularMoviesPageOpened();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeOnAppStartedEvent value) onAppStarted,
    required TResult Function(_HomeOnPopularMoviesPageOpenedEvent value)
        onPopularMoviesPageOpened,
  }) {
    return onPopularMoviesPageOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeOnAppStartedEvent value)? onAppStarted,
    TResult? Function(_HomeOnPopularMoviesPageOpenedEvent value)?
        onPopularMoviesPageOpened,
  }) {
    return onPopularMoviesPageOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeOnAppStartedEvent value)? onAppStarted,
    TResult Function(_HomeOnPopularMoviesPageOpenedEvent value)?
        onPopularMoviesPageOpened,
    required TResult orElse(),
  }) {
    if (onPopularMoviesPageOpened != null) {
      return onPopularMoviesPageOpened(this);
    }
    return orElse();
  }
}

abstract class _HomeOnPopularMoviesPageOpenedEvent implements HomeEvent {
  const factory _HomeOnPopularMoviesPageOpenedEvent() =
      _$_HomeOnPopularMoviesPageOpenedEvent;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Movie> popularMovies) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Movie> popularMovies)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Movie> popularMovies)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeLoadingState value)? loading,
    TResult? Function(_HomeLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_HomeLoadingStateCopyWith<$Res> {
  factory _$$_HomeLoadingStateCopyWith(
          _$_HomeLoadingState value, $Res Function(_$_HomeLoadingState) then) =
      __$$_HomeLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomeLoadingStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeLoadingState>
    implements _$$_HomeLoadingStateCopyWith<$Res> {
  __$$_HomeLoadingStateCopyWithImpl(
      _$_HomeLoadingState _value, $Res Function(_$_HomeLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HomeLoadingState implements _HomeLoadingState {
  const _$_HomeLoadingState();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HomeLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Movie> popularMovies) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Movie> popularMovies)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Movie> popularMovies)? loaded,
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
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeLoadingState value)? loading,
    TResult? Function(_HomeLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _HomeLoadingState implements HomeState {
  const factory _HomeLoadingState() = _$_HomeLoadingState;
}

/// @nodoc
abstract class _$$_HomeLoadedStateCopyWith<$Res> {
  factory _$$_HomeLoadedStateCopyWith(
          _$_HomeLoadedState value, $Res Function(_$_HomeLoadedState) then) =
      __$$_HomeLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Movie> popularMovies});
}

/// @nodoc
class __$$_HomeLoadedStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeLoadedState>
    implements _$$_HomeLoadedStateCopyWith<$Res> {
  __$$_HomeLoadedStateCopyWithImpl(
      _$_HomeLoadedState _value, $Res Function(_$_HomeLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? popularMovies = null,
  }) {
    return _then(_$_HomeLoadedState(
      popularMovies: null == popularMovies
          ? _value._popularMovies
          : popularMovies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$_HomeLoadedState implements _HomeLoadedState {
  const _$_HomeLoadedState({required final List<Movie> popularMovies})
      : _popularMovies = popularMovies;

  final List<Movie> _popularMovies;
  @override
  List<Movie> get popularMovies {
    if (_popularMovies is EqualUnmodifiableListView) return _popularMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularMovies);
  }

  @override
  String toString() {
    return 'HomeState.loaded(popularMovies: $popularMovies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeLoadedState &&
            const DeepCollectionEquality()
                .equals(other._popularMovies, _popularMovies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_popularMovies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeLoadedStateCopyWith<_$_HomeLoadedState> get copyWith =>
      __$$_HomeLoadedStateCopyWithImpl<_$_HomeLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Movie> popularMovies) loaded,
  }) {
    return loaded(popularMovies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Movie> popularMovies)? loaded,
  }) {
    return loaded?.call(popularMovies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Movie> popularMovies)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(popularMovies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeLoadingState value)? loading,
    TResult? Function(_HomeLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _HomeLoadedState implements HomeState {
  const factory _HomeLoadedState({required final List<Movie> popularMovies}) =
      _$_HomeLoadedState;

  List<Movie> get popularMovies;
  @JsonKey(ignore: true)
  _$$_HomeLoadedStateCopyWith<_$_HomeLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
