// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i8;
import 'package:tmdb_clone_app/feature/home/presentation/home_page.dart' as _i1;
import 'package:tmdb_clone_app/feature/movie_details/presentation/movie_details_page.dart'
    as _i2;
import 'package:tmdb_clone_app/feature/person_details/presentation/person_details_page.dart'
    as _i3;
import 'package:tmdb_clone_app/feature/popular_movies/presentation/popular_movies_page.dart'
    as _i4;
import 'package:tmdb_clone_app/feature/trending_movies/presentation/trending_movies_page.dart'
    as _i5;
import 'package:tmdb_clone_app/models/movie.dart' as _i7;
import 'package:tmdb_clone_app/models/person.dart' as _i9;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    MovieDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<MovieDetailsRouteArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.MovieDetailsPage(
          args.movie,
          key: args.key,
        ),
      );
    },
    PersonDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<PersonDetailsRouteArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.PersonDetailsPage(
          args.person,
          key: args.key,
        ),
      );
    },
    PopularMoviesRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.PopularMoviesPage(),
      );
    },
    TrendingMoviesRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.TrendingMoviesPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.MovieDetailsPage]
class MovieDetailsRoute extends _i6.PageRouteInfo<MovieDetailsRouteArgs> {
  MovieDetailsRoute({
    required _i7.Movie movie,
    _i8.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          MovieDetailsRoute.name,
          args: MovieDetailsRouteArgs(
            movie: movie,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieDetailsRoute';

  static const _i6.PageInfo<MovieDetailsRouteArgs> page =
      _i6.PageInfo<MovieDetailsRouteArgs>(name);
}

class MovieDetailsRouteArgs {
  const MovieDetailsRouteArgs({
    required this.movie,
    this.key,
  });

  final _i7.Movie movie;

  final _i8.Key? key;

  @override
  String toString() {
    return 'MovieDetailsRouteArgs{movie: $movie, key: $key}';
  }
}

/// generated route for
/// [_i3.PersonDetailsPage]
class PersonDetailsRoute extends _i6.PageRouteInfo<PersonDetailsRouteArgs> {
  PersonDetailsRoute({
    required _i9.Person person,
    _i8.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          PersonDetailsRoute.name,
          args: PersonDetailsRouteArgs(
            person: person,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PersonDetailsRoute';

  static const _i6.PageInfo<PersonDetailsRouteArgs> page =
      _i6.PageInfo<PersonDetailsRouteArgs>(name);
}

class PersonDetailsRouteArgs {
  const PersonDetailsRouteArgs({
    required this.person,
    this.key,
  });

  final _i9.Person person;

  final _i8.Key? key;

  @override
  String toString() {
    return 'PersonDetailsRouteArgs{person: $person, key: $key}';
  }
}

/// generated route for
/// [_i4.PopularMoviesPage]
class PopularMoviesRoute extends _i6.PageRouteInfo<void> {
  const PopularMoviesRoute({List<_i6.PageRouteInfo>? children})
      : super(
          PopularMoviesRoute.name,
          initialChildren: children,
        );

  static const String name = 'PopularMoviesRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.TrendingMoviesPage]
class TrendingMoviesRoute extends _i6.PageRouteInfo<void> {
  const TrendingMoviesRoute({List<_i6.PageRouteInfo>? children})
      : super(
          TrendingMoviesRoute.name,
          initialChildren: children,
        );

  static const String name = 'TrendingMoviesRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
