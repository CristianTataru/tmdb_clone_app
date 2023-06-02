// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieDetails _$MovieDetailsFromJson(Map<String, dynamic> json) {
  return _MovieDetails.fromJson(json);
}

/// @nodoc
mixin _$MovieDetails {
  @JsonKey(name: 'backdrop_path')
  String get backgroundPosterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'belongs_to_collection')
  Collection? get collection => throw _privateConstructorUsedError;
  int get budget => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: "production_companies")
  List<ProductionCompany> get productionCompanies =>
      throw _privateConstructorUsedError;
  int get revenue => throw _privateConstructorUsedError;
  @JsonKey(name: "spoken_languages")
  List<SpokenLanguage> get spokenLanguages =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_count")
  int get voteCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailsCopyWith<MovieDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsCopyWith<$Res> {
  factory $MovieDetailsCopyWith(
          MovieDetails value, $Res Function(MovieDetails) then) =
      _$MovieDetailsCopyWithImpl<$Res, MovieDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'backdrop_path')
          String backgroundPosterPath,
      @JsonKey(name: 'belongs_to_collection')
          Collection? collection,
      int budget,
      String overview,
      @JsonKey(name: "production_companies")
          List<ProductionCompany> productionCompanies,
      int revenue,
      @JsonKey(name: "spoken_languages")
          List<SpokenLanguage> spokenLanguages,
      @JsonKey(name: "vote_average")
          double voteAverage,
      @JsonKey(name: "vote_count")
          int voteCount});

  $CollectionCopyWith<$Res>? get collection;
}

/// @nodoc
class _$MovieDetailsCopyWithImpl<$Res, $Val extends MovieDetails>
    implements $MovieDetailsCopyWith<$Res> {
  _$MovieDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundPosterPath = null,
    Object? collection = freezed,
    Object? budget = null,
    Object? overview = null,
    Object? productionCompanies = null,
    Object? revenue = null,
    Object? spokenLanguages = null,
    Object? voteAverage = null,
    Object? voteCount = null,
  }) {
    return _then(_value.copyWith(
      backgroundPosterPath: null == backgroundPosterPath
          ? _value.backgroundPosterPath
          : backgroundPosterPath // ignore: cast_nullable_to_non_nullable
              as String,
      collection: freezed == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as Collection?,
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      productionCompanies: null == productionCompanies
          ? _value.productionCompanies
          : productionCompanies // ignore: cast_nullable_to_non_nullable
              as List<ProductionCompany>,
      revenue: null == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as int,
      spokenLanguages: null == spokenLanguages
          ? _value.spokenLanguages
          : spokenLanguages // ignore: cast_nullable_to_non_nullable
              as List<SpokenLanguage>,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CollectionCopyWith<$Res>? get collection {
    if (_value.collection == null) {
      return null;
    }

    return $CollectionCopyWith<$Res>(_value.collection!, (value) {
      return _then(_value.copyWith(collection: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MovieDetailsCopyWith<$Res>
    implements $MovieDetailsCopyWith<$Res> {
  factory _$$_MovieDetailsCopyWith(
          _$_MovieDetails value, $Res Function(_$_MovieDetails) then) =
      __$$_MovieDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'backdrop_path')
          String backgroundPosterPath,
      @JsonKey(name: 'belongs_to_collection')
          Collection? collection,
      int budget,
      String overview,
      @JsonKey(name: "production_companies")
          List<ProductionCompany> productionCompanies,
      int revenue,
      @JsonKey(name: "spoken_languages")
          List<SpokenLanguage> spokenLanguages,
      @JsonKey(name: "vote_average")
          double voteAverage,
      @JsonKey(name: "vote_count")
          int voteCount});

  @override
  $CollectionCopyWith<$Res>? get collection;
}

/// @nodoc
class __$$_MovieDetailsCopyWithImpl<$Res>
    extends _$MovieDetailsCopyWithImpl<$Res, _$_MovieDetails>
    implements _$$_MovieDetailsCopyWith<$Res> {
  __$$_MovieDetailsCopyWithImpl(
      _$_MovieDetails _value, $Res Function(_$_MovieDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundPosterPath = null,
    Object? collection = freezed,
    Object? budget = null,
    Object? overview = null,
    Object? productionCompanies = null,
    Object? revenue = null,
    Object? spokenLanguages = null,
    Object? voteAverage = null,
    Object? voteCount = null,
  }) {
    return _then(_$_MovieDetails(
      backgroundPosterPath: null == backgroundPosterPath
          ? _value.backgroundPosterPath
          : backgroundPosterPath // ignore: cast_nullable_to_non_nullable
              as String,
      collection: freezed == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as Collection?,
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      productionCompanies: null == productionCompanies
          ? _value._productionCompanies
          : productionCompanies // ignore: cast_nullable_to_non_nullable
              as List<ProductionCompany>,
      revenue: null == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as int,
      spokenLanguages: null == spokenLanguages
          ? _value._spokenLanguages
          : spokenLanguages // ignore: cast_nullable_to_non_nullable
              as List<SpokenLanguage>,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieDetails implements _MovieDetails {
  const _$_MovieDetails(
      {@JsonKey(name: 'backdrop_path')
          required this.backgroundPosterPath,
      @JsonKey(name: 'belongs_to_collection')
          required this.collection,
      required this.budget,
      required this.overview,
      @JsonKey(name: "production_companies")
          required final List<ProductionCompany> productionCompanies,
      required this.revenue,
      @JsonKey(name: "spoken_languages")
          required final List<SpokenLanguage> spokenLanguages,
      @JsonKey(name: "vote_average")
          required this.voteAverage,
      @JsonKey(name: "vote_count")
          required this.voteCount})
      : _productionCompanies = productionCompanies,
        _spokenLanguages = spokenLanguages;

  factory _$_MovieDetails.fromJson(Map<String, dynamic> json) =>
      _$$_MovieDetailsFromJson(json);

  @override
  @JsonKey(name: 'backdrop_path')
  final String backgroundPosterPath;
  @override
  @JsonKey(name: 'belongs_to_collection')
  final Collection? collection;
  @override
  final int budget;
  @override
  final String overview;
  final List<ProductionCompany> _productionCompanies;
  @override
  @JsonKey(name: "production_companies")
  List<ProductionCompany> get productionCompanies {
    if (_productionCompanies is EqualUnmodifiableListView)
      return _productionCompanies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productionCompanies);
  }

  @override
  final int revenue;
  final List<SpokenLanguage> _spokenLanguages;
  @override
  @JsonKey(name: "spoken_languages")
  List<SpokenLanguage> get spokenLanguages {
    if (_spokenLanguages is EqualUnmodifiableListView) return _spokenLanguages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spokenLanguages);
  }

  @override
  @JsonKey(name: "vote_average")
  final double voteAverage;
  @override
  @JsonKey(name: "vote_count")
  final int voteCount;

  @override
  String toString() {
    return 'MovieDetails(backgroundPosterPath: $backgroundPosterPath, collection: $collection, budget: $budget, overview: $overview, productionCompanies: $productionCompanies, revenue: $revenue, spokenLanguages: $spokenLanguages, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieDetails &&
            (identical(other.backgroundPosterPath, backgroundPosterPath) ||
                other.backgroundPosterPath == backgroundPosterPath) &&
            (identical(other.collection, collection) ||
                other.collection == collection) &&
            (identical(other.budget, budget) || other.budget == budget) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            const DeepCollectionEquality()
                .equals(other._productionCompanies, _productionCompanies) &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            const DeepCollectionEquality()
                .equals(other._spokenLanguages, _spokenLanguages) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      backgroundPosterPath,
      collection,
      budget,
      overview,
      const DeepCollectionEquality().hash(_productionCompanies),
      revenue,
      const DeepCollectionEquality().hash(_spokenLanguages),
      voteAverage,
      voteCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieDetailsCopyWith<_$_MovieDetails> get copyWith =>
      __$$_MovieDetailsCopyWithImpl<_$_MovieDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieDetailsToJson(
      this,
    );
  }
}

abstract class _MovieDetails implements MovieDetails {
  const factory _MovieDetails(
      {@JsonKey(name: 'backdrop_path')
          required final String backgroundPosterPath,
      @JsonKey(name: 'belongs_to_collection')
          required final Collection? collection,
      required final int budget,
      required final String overview,
      @JsonKey(name: "production_companies")
          required final List<ProductionCompany> productionCompanies,
      required final int revenue,
      @JsonKey(name: "spoken_languages")
          required final List<SpokenLanguage> spokenLanguages,
      @JsonKey(name: "vote_average")
          required final double voteAverage,
      @JsonKey(name: "vote_count")
          required final int voteCount}) = _$_MovieDetails;

  factory _MovieDetails.fromJson(Map<String, dynamic> json) =
      _$_MovieDetails.fromJson;

  @override
  @JsonKey(name: 'backdrop_path')
  String get backgroundPosterPath;
  @override
  @JsonKey(name: 'belongs_to_collection')
  Collection? get collection;
  @override
  int get budget;
  @override
  String get overview;
  @override
  @JsonKey(name: "production_companies")
  List<ProductionCompany> get productionCompanies;
  @override
  int get revenue;
  @override
  @JsonKey(name: "spoken_languages")
  List<SpokenLanguage> get spokenLanguages;
  @override
  @JsonKey(name: "vote_average")
  double get voteAverage;
  @override
  @JsonKey(name: "vote_count")
  int get voteCount;
  @override
  @JsonKey(ignore: true)
  _$$_MovieDetailsCopyWith<_$_MovieDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
