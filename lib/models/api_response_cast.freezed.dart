// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_cast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponseCast _$ApiResponseCastFromJson(Map<String, dynamic> json) {
  return _ApiResponseCast.fromJson(json);
}

/// @nodoc
mixin _$ApiResponseCast {
  List<Person> get cast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseCastCopyWith<ApiResponseCast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCastCopyWith<$Res> {
  factory $ApiResponseCastCopyWith(
          ApiResponseCast value, $Res Function(ApiResponseCast) then) =
      _$ApiResponseCastCopyWithImpl<$Res, ApiResponseCast>;
  @useResult
  $Res call({List<Person> cast});
}

/// @nodoc
class _$ApiResponseCastCopyWithImpl<$Res, $Val extends ApiResponseCast>
    implements $ApiResponseCastCopyWith<$Res> {
  _$ApiResponseCastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cast = null,
  }) {
    return _then(_value.copyWith(
      cast: null == cast
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Person>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApiResponseCastCopyWith<$Res>
    implements $ApiResponseCastCopyWith<$Res> {
  factory _$$_ApiResponseCastCopyWith(
          _$_ApiResponseCast value, $Res Function(_$_ApiResponseCast) then) =
      __$$_ApiResponseCastCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Person> cast});
}

/// @nodoc
class __$$_ApiResponseCastCopyWithImpl<$Res>
    extends _$ApiResponseCastCopyWithImpl<$Res, _$_ApiResponseCast>
    implements _$$_ApiResponseCastCopyWith<$Res> {
  __$$_ApiResponseCastCopyWithImpl(
      _$_ApiResponseCast _value, $Res Function(_$_ApiResponseCast) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cast = null,
  }) {
    return _then(_$_ApiResponseCast(
      cast: null == cast
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Person>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiResponseCast implements _ApiResponseCast {
  const _$_ApiResponseCast({required final List<Person> cast}) : _cast = cast;

  factory _$_ApiResponseCast.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResponseCastFromJson(json);

  final List<Person> _cast;
  @override
  List<Person> get cast {
    if (_cast is EqualUnmodifiableListView) return _cast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cast);
  }

  @override
  String toString() {
    return 'ApiResponseCast(cast: $cast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponseCast &&
            const DeepCollectionEquality().equals(other._cast, _cast));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cast));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseCastCopyWith<_$_ApiResponseCast> get copyWith =>
      __$$_ApiResponseCastCopyWithImpl<_$_ApiResponseCast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResponseCastToJson(
      this,
    );
  }
}

abstract class _ApiResponseCast implements ApiResponseCast {
  const factory _ApiResponseCast({required final List<Person> cast}) =
      _$_ApiResponseCast;

  factory _ApiResponseCast.fromJson(Map<String, dynamic> json) =
      _$_ApiResponseCast.fromJson;

  @override
  List<Person> get cast;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseCastCopyWith<_$_ApiResponseCast> get copyWith =>
      throw _privateConstructorUsedError;
}
