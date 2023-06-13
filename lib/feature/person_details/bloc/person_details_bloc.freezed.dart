// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PersonDetailsEvent {
  Person get person => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Person person) onPageOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Person person)? onPageOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Person person)? onPageOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PersonDetailsOnPageOpenedEvent value)
        onPageOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PersonDetailsOnPageOpenedEvent value)? onPageOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PersonDetailsOnPageOpenedEvent value)? onPageOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PersonDetailsEventCopyWith<PersonDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonDetailsEventCopyWith<$Res> {
  factory $PersonDetailsEventCopyWith(
          PersonDetailsEvent value, $Res Function(PersonDetailsEvent) then) =
      _$PersonDetailsEventCopyWithImpl<$Res, PersonDetailsEvent>;
  @useResult
  $Res call({Person person});

  $PersonCopyWith<$Res> get person;
}

/// @nodoc
class _$PersonDetailsEventCopyWithImpl<$Res, $Val extends PersonDetailsEvent>
    implements $PersonDetailsEventCopyWith<$Res> {
  _$PersonDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? person = null,
  }) {
    return _then(_value.copyWith(
      person: null == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonCopyWith<$Res> get person {
    return $PersonCopyWith<$Res>(_value.person, (value) {
      return _then(_value.copyWith(person: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PersonDetailsOnPageOpenedEventCopyWith<$Res>
    implements $PersonDetailsEventCopyWith<$Res> {
  factory _$$_PersonDetailsOnPageOpenedEventCopyWith(
          _$_PersonDetailsOnPageOpenedEvent value,
          $Res Function(_$_PersonDetailsOnPageOpenedEvent) then) =
      __$$_PersonDetailsOnPageOpenedEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Person person});

  @override
  $PersonCopyWith<$Res> get person;
}

/// @nodoc
class __$$_PersonDetailsOnPageOpenedEventCopyWithImpl<$Res>
    extends _$PersonDetailsEventCopyWithImpl<$Res,
        _$_PersonDetailsOnPageOpenedEvent>
    implements _$$_PersonDetailsOnPageOpenedEventCopyWith<$Res> {
  __$$_PersonDetailsOnPageOpenedEventCopyWithImpl(
      _$_PersonDetailsOnPageOpenedEvent _value,
      $Res Function(_$_PersonDetailsOnPageOpenedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? person = null,
  }) {
    return _then(_$_PersonDetailsOnPageOpenedEvent(
      person: null == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person,
    ));
  }
}

/// @nodoc

class _$_PersonDetailsOnPageOpenedEvent
    implements _PersonDetailsOnPageOpenedEvent {
  const _$_PersonDetailsOnPageOpenedEvent({required this.person});

  @override
  final Person person;

  @override
  String toString() {
    return 'PersonDetailsEvent.onPageOpened(person: $person)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonDetailsOnPageOpenedEvent &&
            (identical(other.person, person) || other.person == person));
  }

  @override
  int get hashCode => Object.hash(runtimeType, person);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonDetailsOnPageOpenedEventCopyWith<_$_PersonDetailsOnPageOpenedEvent>
      get copyWith => __$$_PersonDetailsOnPageOpenedEventCopyWithImpl<
          _$_PersonDetailsOnPageOpenedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Person person) onPageOpened,
  }) {
    return onPageOpened(person);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Person person)? onPageOpened,
  }) {
    return onPageOpened?.call(person);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Person person)? onPageOpened,
    required TResult orElse(),
  }) {
    if (onPageOpened != null) {
      return onPageOpened(person);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PersonDetailsOnPageOpenedEvent value)
        onPageOpened,
  }) {
    return onPageOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PersonDetailsOnPageOpenedEvent value)? onPageOpened,
  }) {
    return onPageOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PersonDetailsOnPageOpenedEvent value)? onPageOpened,
    required TResult orElse(),
  }) {
    if (onPageOpened != null) {
      return onPageOpened(this);
    }
    return orElse();
  }
}

abstract class _PersonDetailsOnPageOpenedEvent implements PersonDetailsEvent {
  const factory _PersonDetailsOnPageOpenedEvent(
      {required final Person person}) = _$_PersonDetailsOnPageOpenedEvent;

  @override
  Person get person;
  @override
  @JsonKey(ignore: true)
  _$$_PersonDetailsOnPageOpenedEventCopyWith<_$_PersonDetailsOnPageOpenedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PersonDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PersonDetails personDetails) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(PersonDetails personDetails)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PersonDetails personDetails)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PersonDetailsLoadingState value) loading,
    required TResult Function(_PersonDetailsLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PersonDetailsLoadingState value)? loading,
    TResult? Function(_PersonDetailsLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PersonDetailsLoadingState value)? loading,
    TResult Function(_PersonDetailsLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonDetailsStateCopyWith<$Res> {
  factory $PersonDetailsStateCopyWith(
          PersonDetailsState value, $Res Function(PersonDetailsState) then) =
      _$PersonDetailsStateCopyWithImpl<$Res, PersonDetailsState>;
}

/// @nodoc
class _$PersonDetailsStateCopyWithImpl<$Res, $Val extends PersonDetailsState>
    implements $PersonDetailsStateCopyWith<$Res> {
  _$PersonDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PersonDetailsLoadingStateCopyWith<$Res> {
  factory _$$_PersonDetailsLoadingStateCopyWith(
          _$_PersonDetailsLoadingState value,
          $Res Function(_$_PersonDetailsLoadingState) then) =
      __$$_PersonDetailsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PersonDetailsLoadingStateCopyWithImpl<$Res>
    extends _$PersonDetailsStateCopyWithImpl<$Res, _$_PersonDetailsLoadingState>
    implements _$$_PersonDetailsLoadingStateCopyWith<$Res> {
  __$$_PersonDetailsLoadingStateCopyWithImpl(
      _$_PersonDetailsLoadingState _value,
      $Res Function(_$_PersonDetailsLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PersonDetailsLoadingState implements _PersonDetailsLoadingState {
  const _$_PersonDetailsLoadingState();

  @override
  String toString() {
    return 'PersonDetailsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonDetailsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PersonDetails personDetails) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(PersonDetails personDetails)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PersonDetails personDetails)? loaded,
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
    required TResult Function(_PersonDetailsLoadingState value) loading,
    required TResult Function(_PersonDetailsLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PersonDetailsLoadingState value)? loading,
    TResult? Function(_PersonDetailsLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PersonDetailsLoadingState value)? loading,
    TResult Function(_PersonDetailsLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PersonDetailsLoadingState implements PersonDetailsState {
  const factory _PersonDetailsLoadingState() = _$_PersonDetailsLoadingState;
}

/// @nodoc
abstract class _$$_PersonDetailsLoadedStateCopyWith<$Res> {
  factory _$$_PersonDetailsLoadedStateCopyWith(
          _$_PersonDetailsLoadedState value,
          $Res Function(_$_PersonDetailsLoadedState) then) =
      __$$_PersonDetailsLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({PersonDetails personDetails});

  $PersonDetailsCopyWith<$Res> get personDetails;
}

/// @nodoc
class __$$_PersonDetailsLoadedStateCopyWithImpl<$Res>
    extends _$PersonDetailsStateCopyWithImpl<$Res, _$_PersonDetailsLoadedState>
    implements _$$_PersonDetailsLoadedStateCopyWith<$Res> {
  __$$_PersonDetailsLoadedStateCopyWithImpl(_$_PersonDetailsLoadedState _value,
      $Res Function(_$_PersonDetailsLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personDetails = null,
  }) {
    return _then(_$_PersonDetailsLoadedState(
      personDetails: null == personDetails
          ? _value.personDetails
          : personDetails // ignore: cast_nullable_to_non_nullable
              as PersonDetails,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonDetailsCopyWith<$Res> get personDetails {
    return $PersonDetailsCopyWith<$Res>(_value.personDetails, (value) {
      return _then(_value.copyWith(personDetails: value));
    });
  }
}

/// @nodoc

class _$_PersonDetailsLoadedState implements _PersonDetailsLoadedState {
  const _$_PersonDetailsLoadedState({required this.personDetails});

  @override
  final PersonDetails personDetails;

  @override
  String toString() {
    return 'PersonDetailsState.loaded(personDetails: $personDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonDetailsLoadedState &&
            (identical(other.personDetails, personDetails) ||
                other.personDetails == personDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, personDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonDetailsLoadedStateCopyWith<_$_PersonDetailsLoadedState>
      get copyWith => __$$_PersonDetailsLoadedStateCopyWithImpl<
          _$_PersonDetailsLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PersonDetails personDetails) loaded,
  }) {
    return loaded(personDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(PersonDetails personDetails)? loaded,
  }) {
    return loaded?.call(personDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PersonDetails personDetails)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(personDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PersonDetailsLoadingState value) loading,
    required TResult Function(_PersonDetailsLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PersonDetailsLoadingState value)? loading,
    TResult? Function(_PersonDetailsLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PersonDetailsLoadingState value)? loading,
    TResult Function(_PersonDetailsLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _PersonDetailsLoadedState implements PersonDetailsState {
  const factory _PersonDetailsLoadedState(
          {required final PersonDetails personDetails}) =
      _$_PersonDetailsLoadedState;

  PersonDetails get personDetails;
  @JsonKey(ignore: true)
  _$$_PersonDetailsLoadedStateCopyWith<_$_PersonDetailsLoadedState>
      get copyWith => throw _privateConstructorUsedError;
}
