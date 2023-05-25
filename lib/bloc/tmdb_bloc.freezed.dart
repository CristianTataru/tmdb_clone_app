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
    required TResult Function(_TmdbCloneOnAppStartedEvent value) onAppStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TmdbCloneOnAppStartedEvent value)? onAppStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TmdbCloneOnAppStartedEvent value)? onAppStarted,
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
abstract class _$$_TmdbCloneOnAppStartedEventCopyWith<$Res> {
  factory _$$_TmdbCloneOnAppStartedEventCopyWith(
          _$_TmdbCloneOnAppStartedEvent value,
          $Res Function(_$_TmdbCloneOnAppStartedEvent) then) =
      __$$_TmdbCloneOnAppStartedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TmdbCloneOnAppStartedEventCopyWithImpl<$Res>
    extends _$TmdbEventCopyWithImpl<$Res, _$_TmdbCloneOnAppStartedEvent>
    implements _$$_TmdbCloneOnAppStartedEventCopyWith<$Res> {
  __$$_TmdbCloneOnAppStartedEventCopyWithImpl(
      _$_TmdbCloneOnAppStartedEvent _value,
      $Res Function(_$_TmdbCloneOnAppStartedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TmdbCloneOnAppStartedEvent implements _TmdbCloneOnAppStartedEvent {
  const _$_TmdbCloneOnAppStartedEvent();

  @override
  String toString() {
    return 'TmdbEvent.onAppStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TmdbCloneOnAppStartedEvent);
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
    required TResult Function(_TmdbCloneOnAppStartedEvent value) onAppStarted,
  }) {
    return onAppStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TmdbCloneOnAppStartedEvent value)? onAppStarted,
  }) {
    return onAppStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TmdbCloneOnAppStartedEvent value)? onAppStarted,
    required TResult orElse(),
  }) {
    if (onAppStarted != null) {
      return onAppStarted(this);
    }
    return orElse();
  }
}

abstract class _TmdbCloneOnAppStartedEvent implements TmdbEvent {
  const factory _TmdbCloneOnAppStartedEvent() = _$_TmdbCloneOnAppStartedEvent;
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
    required TResult Function(_TmdbCloneLoadingState value) loading,
    required TResult Function(_TmdbCloneLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TmdbCloneLoadingState value)? loading,
    TResult? Function(_TmdbCloneLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TmdbCloneLoadingState value)? loading,
    TResult Function(_TmdbCloneLoadedState value)? loaded,
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
abstract class _$$_TmdbCloneLoadingStateCopyWith<$Res> {
  factory _$$_TmdbCloneLoadingStateCopyWith(_$_TmdbCloneLoadingState value,
          $Res Function(_$_TmdbCloneLoadingState) then) =
      __$$_TmdbCloneLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TmdbCloneLoadingStateCopyWithImpl<$Res>
    extends _$TmdbStateCopyWithImpl<$Res, _$_TmdbCloneLoadingState>
    implements _$$_TmdbCloneLoadingStateCopyWith<$Res> {
  __$$_TmdbCloneLoadingStateCopyWithImpl(_$_TmdbCloneLoadingState _value,
      $Res Function(_$_TmdbCloneLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TmdbCloneLoadingState implements _TmdbCloneLoadingState {
  const _$_TmdbCloneLoadingState();

  @override
  String toString() {
    return 'TmdbState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TmdbCloneLoadingState);
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
    required TResult Function(_TmdbCloneLoadingState value) loading,
    required TResult Function(_TmdbCloneLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TmdbCloneLoadingState value)? loading,
    TResult? Function(_TmdbCloneLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TmdbCloneLoadingState value)? loading,
    TResult Function(_TmdbCloneLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _TmdbCloneLoadingState implements TmdbState {
  const factory _TmdbCloneLoadingState() = _$_TmdbCloneLoadingState;
}

/// @nodoc
abstract class _$$_TmdbCloneLoadedStateCopyWith<$Res> {
  factory _$$_TmdbCloneLoadedStateCopyWith(_$_TmdbCloneLoadedState value,
          $Res Function(_$_TmdbCloneLoadedState) then) =
      __$$_TmdbCloneLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Movie> popularMovies20});
}

/// @nodoc
class __$$_TmdbCloneLoadedStateCopyWithImpl<$Res>
    extends _$TmdbStateCopyWithImpl<$Res, _$_TmdbCloneLoadedState>
    implements _$$_TmdbCloneLoadedStateCopyWith<$Res> {
  __$$_TmdbCloneLoadedStateCopyWithImpl(_$_TmdbCloneLoadedState _value,
      $Res Function(_$_TmdbCloneLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? popularMovies20 = null,
  }) {
    return _then(_$_TmdbCloneLoadedState(
      popularMovies20: null == popularMovies20
          ? _value._popularMovies20
          : popularMovies20 // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$_TmdbCloneLoadedState implements _TmdbCloneLoadedState {
  const _$_TmdbCloneLoadedState({required final List<Movie> popularMovies20})
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
            other is _$_TmdbCloneLoadedState &&
            const DeepCollectionEquality()
                .equals(other._popularMovies20, _popularMovies20));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_popularMovies20));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TmdbCloneLoadedStateCopyWith<_$_TmdbCloneLoadedState> get copyWith =>
      __$$_TmdbCloneLoadedStateCopyWithImpl<_$_TmdbCloneLoadedState>(
          this, _$identity);

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
    required TResult Function(_TmdbCloneLoadingState value) loading,
    required TResult Function(_TmdbCloneLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TmdbCloneLoadingState value)? loading,
    TResult? Function(_TmdbCloneLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TmdbCloneLoadingState value)? loading,
    TResult Function(_TmdbCloneLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _TmdbCloneLoadedState implements TmdbState {
  const factory _TmdbCloneLoadedState(
      {required final List<Movie> popularMovies20}) = _$_TmdbCloneLoadedState;

  List<Movie> get popularMovies20;
  @JsonKey(ignore: true)
  _$$_TmdbCloneLoadedStateCopyWith<_$_TmdbCloneLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
