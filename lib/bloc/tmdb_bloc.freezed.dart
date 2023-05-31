// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tmdb_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TmdbEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAppStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TmdbOnAppStartedEvent value) onAppStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TmdbOnAppStartedEvent value)? onAppStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TmdbOnAppStartedEvent value)? onAppStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TmdbEventCopyWith<$Res> {
  factory $TmdbEventCopyWith(TmdbEvent value, $Res Function(TmdbEvent) then) =
      _$TmdbEventCopyWithImpl<$Res, TmdbEvent>;
}

/// @nodoc
class _$TmdbEventCopyWithImpl<$Res, $Val extends TmdbEvent>
    implements $TmdbEventCopyWith<$Res> {
  _$TmdbEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TmdbOnAppStartedEventCopyWith<$Res> {
  factory _$$_TmdbOnAppStartedEventCopyWith(_$_TmdbOnAppStartedEvent value,
          $Res Function(_$_TmdbOnAppStartedEvent) then) =
      __$$_TmdbOnAppStartedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TmdbOnAppStartedEventCopyWithImpl<$Res>
    extends _$TmdbEventCopyWithImpl<$Res, _$_TmdbOnAppStartedEvent>
    implements _$$_TmdbOnAppStartedEventCopyWith<$Res> {
  __$$_TmdbOnAppStartedEventCopyWithImpl(_$_TmdbOnAppStartedEvent _value,
      $Res Function(_$_TmdbOnAppStartedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TmdbOnAppStartedEvent implements _TmdbOnAppStartedEvent {
  const _$_TmdbOnAppStartedEvent();

  @override
  String toString() {
    return 'TmdbEvent.onAppStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TmdbOnAppStartedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAppStarted,
  }) {
    return onAppStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onAppStarted,
  }) {
    return onAppStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAppStarted,
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
    required TResult Function(_TmdbOnAppStartedEvent value) onAppStarted,
  }) {
    return onAppStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TmdbOnAppStartedEvent value)? onAppStarted,
  }) {
    return onAppStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TmdbOnAppStartedEvent value)? onAppStarted,
    required TResult orElse(),
  }) {
    if (onAppStarted != null) {
      return onAppStarted(this);
    }
    return orElse();
  }
}

abstract class _TmdbOnAppStartedEvent implements TmdbEvent {
  const factory _TmdbOnAppStartedEvent() = _$_TmdbOnAppStartedEvent;
}

/// @nodoc
mixin _$TmdbState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Movie> popularMovies20) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Movie> popularMovies20)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Movie> popularMovies20)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TmdbLoadingState value) loading,
    required TResult Function(_TmdbLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TmdbLoadingState value)? loading,
    TResult? Function(_TmdbLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TmdbLoadingState value)? loading,
    TResult Function(_TmdbLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TmdbStateCopyWith<$Res> {
  factory $TmdbStateCopyWith(TmdbState value, $Res Function(TmdbState) then) =
      _$TmdbStateCopyWithImpl<$Res, TmdbState>;
}

/// @nodoc
class _$TmdbStateCopyWithImpl<$Res, $Val extends TmdbState>
    implements $TmdbStateCopyWith<$Res> {
  _$TmdbStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TmdbLoadingStateCopyWith<$Res> {
  factory _$$_TmdbLoadingStateCopyWith(
          _$_TmdbLoadingState value, $Res Function(_$_TmdbLoadingState) then) =
      __$$_TmdbLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TmdbLoadingStateCopyWithImpl<$Res>
    extends _$TmdbStateCopyWithImpl<$Res, _$_TmdbLoadingState>
    implements _$$_TmdbLoadingStateCopyWith<$Res> {
  __$$_TmdbLoadingStateCopyWithImpl(
      _$_TmdbLoadingState _value, $Res Function(_$_TmdbLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TmdbLoadingState implements _TmdbLoadingState {
  const _$_TmdbLoadingState();

  @override
  String toString() {
    return 'TmdbState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TmdbLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Movie> popularMovies20) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Movie> popularMovies20)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Movie> popularMovies20)? loaded,
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
    required TResult Function(_TmdbLoadingState value) loading,
    required TResult Function(_TmdbLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TmdbLoadingState value)? loading,
    TResult? Function(_TmdbLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TmdbLoadingState value)? loading,
    TResult Function(_TmdbLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _TmdbLoadingState implements TmdbState {
  const factory _TmdbLoadingState() = _$_TmdbLoadingState;
}

/// @nodoc
abstract class _$$_TmdbLoadedStateCopyWith<$Res> {
  factory _$$_TmdbLoadedStateCopyWith(
          _$_TmdbLoadedState value, $Res Function(_$_TmdbLoadedState) then) =
      __$$_TmdbLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Movie> popularMovies20});
}

/// @nodoc
class __$$_TmdbLoadedStateCopyWithImpl<$Res>
    extends _$TmdbStateCopyWithImpl<$Res, _$_TmdbLoadedState>
    implements _$$_TmdbLoadedStateCopyWith<$Res> {
  __$$_TmdbLoadedStateCopyWithImpl(
      _$_TmdbLoadedState _value, $Res Function(_$_TmdbLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? popularMovies20 = null,
  }) {
    return _then(_$_TmdbLoadedState(
      popularMovies20: null == popularMovies20
          ? _value._popularMovies20
          : popularMovies20 // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$_TmdbLoadedState implements _TmdbLoadedState {
  const _$_TmdbLoadedState({required final List<Movie> popularMovies20})
      : _popularMovies20 = popularMovies20;

  final List<Movie> _popularMovies20;
  @override
  List<Movie> get popularMovies20 {
    if (_popularMovies20 is EqualUnmodifiableListView) return _popularMovies20;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularMovies20);
  }

  @override
  String toString() {
    return 'TmdbState.loaded(popularMovies20: $popularMovies20)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TmdbLoadedState &&
            const DeepCollectionEquality()
                .equals(other._popularMovies20, _popularMovies20));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_popularMovies20));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TmdbLoadedStateCopyWith<_$_TmdbLoadedState> get copyWith =>
      __$$_TmdbLoadedStateCopyWithImpl<_$_TmdbLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Movie> popularMovies20) loaded,
  }) {
    return loaded(popularMovies20);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Movie> popularMovies20)? loaded,
  }) {
    return loaded?.call(popularMovies20);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Movie> popularMovies20)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(popularMovies20);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TmdbLoadingState value) loading,
    required TResult Function(_TmdbLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TmdbLoadingState value)? loading,
    TResult? Function(_TmdbLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TmdbLoadingState value)? loading,
    TResult Function(_TmdbLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _TmdbLoadedState implements TmdbState {
  const factory _TmdbLoadedState({required final List<Movie> popularMovies20}) =
      _$_TmdbLoadedState;

  List<Movie> get popularMovies20;
  @JsonKey(ignore: true)
  _$$_TmdbLoadedStateCopyWith<_$_TmdbLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
