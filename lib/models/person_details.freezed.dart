// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonDetails _$PersonDetailsFromJson(Map<String, dynamic> json) {
  return _PersonDetails.fromJson(json);
}

/// @nodoc
mixin _$PersonDetails {
  @JsonKey(name: 'known_for_department')
  String? get knownFor => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_of_birth')
  String? get birthPlace => throw _privateConstructorUsedError;
  String? get birthday => throw _privateConstructorUsedError;
  String? get deathday => throw _privateConstructorUsedError;
  String? get biography => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonDetailsCopyWith<PersonDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonDetailsCopyWith<$Res> {
  factory $PersonDetailsCopyWith(
          PersonDetails value, $Res Function(PersonDetails) then) =
      _$PersonDetailsCopyWithImpl<$Res, PersonDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'known_for_department') String? knownFor,
      @JsonKey(name: 'place_of_birth') String? birthPlace,
      String? birthday,
      String? deathday,
      String? biography});
}

/// @nodoc
class _$PersonDetailsCopyWithImpl<$Res, $Val extends PersonDetails>
    implements $PersonDetailsCopyWith<$Res> {
  _$PersonDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? knownFor = freezed,
    Object? birthPlace = freezed,
    Object? birthday = freezed,
    Object? deathday = freezed,
    Object? biography = freezed,
  }) {
    return _then(_value.copyWith(
      knownFor: freezed == knownFor
          ? _value.knownFor
          : knownFor // ignore: cast_nullable_to_non_nullable
              as String?,
      birthPlace: freezed == birthPlace
          ? _value.birthPlace
          : birthPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      deathday: freezed == deathday
          ? _value.deathday
          : deathday // ignore: cast_nullable_to_non_nullable
              as String?,
      biography: freezed == biography
          ? _value.biography
          : biography // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersonDetailsCopyWith<$Res>
    implements $PersonDetailsCopyWith<$Res> {
  factory _$$_PersonDetailsCopyWith(
          _$_PersonDetails value, $Res Function(_$_PersonDetails) then) =
      __$$_PersonDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'known_for_department') String? knownFor,
      @JsonKey(name: 'place_of_birth') String? birthPlace,
      String? birthday,
      String? deathday,
      String? biography});
}

/// @nodoc
class __$$_PersonDetailsCopyWithImpl<$Res>
    extends _$PersonDetailsCopyWithImpl<$Res, _$_PersonDetails>
    implements _$$_PersonDetailsCopyWith<$Res> {
  __$$_PersonDetailsCopyWithImpl(
      _$_PersonDetails _value, $Res Function(_$_PersonDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? knownFor = freezed,
    Object? birthPlace = freezed,
    Object? birthday = freezed,
    Object? deathday = freezed,
    Object? biography = freezed,
  }) {
    return _then(_$_PersonDetails(
      knownFor: freezed == knownFor
          ? _value.knownFor
          : knownFor // ignore: cast_nullable_to_non_nullable
              as String?,
      birthPlace: freezed == birthPlace
          ? _value.birthPlace
          : birthPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      deathday: freezed == deathday
          ? _value.deathday
          : deathday // ignore: cast_nullable_to_non_nullable
              as String?,
      biography: freezed == biography
          ? _value.biography
          : biography // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonDetails implements _PersonDetails {
  const _$_PersonDetails(
      {@JsonKey(name: 'known_for_department') required this.knownFor,
      @JsonKey(name: 'place_of_birth') required this.birthPlace,
      required this.birthday,
      required this.deathday,
      required this.biography});

  factory _$_PersonDetails.fromJson(Map<String, dynamic> json) =>
      _$$_PersonDetailsFromJson(json);

  @override
  @JsonKey(name: 'known_for_department')
  final String? knownFor;
  @override
  @JsonKey(name: 'place_of_birth')
  final String? birthPlace;
  @override
  final String? birthday;
  @override
  final String? deathday;
  @override
  final String? biography;

  @override
  String toString() {
    return 'PersonDetails(knownFor: $knownFor, birthPlace: $birthPlace, birthday: $birthday, deathday: $deathday, biography: $biography)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonDetails &&
            (identical(other.knownFor, knownFor) ||
                other.knownFor == knownFor) &&
            (identical(other.birthPlace, birthPlace) ||
                other.birthPlace == birthPlace) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.deathday, deathday) ||
                other.deathday == deathday) &&
            (identical(other.biography, biography) ||
                other.biography == biography));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, knownFor, birthPlace, birthday, deathday, biography);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonDetailsCopyWith<_$_PersonDetails> get copyWith =>
      __$$_PersonDetailsCopyWithImpl<_$_PersonDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonDetailsToJson(
      this,
    );
  }
}

abstract class _PersonDetails implements PersonDetails {
  const factory _PersonDetails(
      {@JsonKey(name: 'known_for_department') required final String? knownFor,
      @JsonKey(name: 'place_of_birth') required final String? birthPlace,
      required final String? birthday,
      required final String? deathday,
      required final String? biography}) = _$_PersonDetails;

  factory _PersonDetails.fromJson(Map<String, dynamic> json) =
      _$_PersonDetails.fromJson;

  @override
  @JsonKey(name: 'known_for_department')
  String? get knownFor;
  @override
  @JsonKey(name: 'place_of_birth')
  String? get birthPlace;
  @override
  String? get birthday;
  @override
  String? get deathday;
  @override
  String? get biography;
  @override
  @JsonKey(ignore: true)
  _$$_PersonDetailsCopyWith<_$_PersonDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
