// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:tmdb_clone_app/di/app_module.dart' as _i12;
import 'package:tmdb_clone_app/domain/api/tmdb_api.dart' as _i5;
import 'package:tmdb_clone_app/domain/repository/tmdb_repository.dart' as _i6;
import 'package:tmdb_clone_app/feature/home/bloc/home_bloc.dart' as _i8;
import 'package:tmdb_clone_app/feature/movie_details/bloc/movie_details_bloc.dart'
    as _i9;
import 'package:tmdb_clone_app/feature/person_details/bloc/person_details_bloc.dart'
    as _i10;
import 'package:tmdb_clone_app/feature/popular_movies/bloc/popular_movies_bloc.dart'
    as _i11;
import 'package:tmdb_clone_app/feature/trending_movies/bloc/trending_movies_bloc.dart'
    as _i7;
import 'package:tmdb_clone_app/routes/router.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.lazySingleton<_i4.Dio>(() => appModule.dio());
    gh.factory<_i5.TMDBApi>(() => _i5.TMDBApi(gh<_i4.Dio>()));
    gh.singleton<_i6.TMDBRepository>(_i6.TMDBRepository(gh<_i5.TMDBApi>()));
    gh.factory<_i7.TrendingMoviesBloc>(() => _i7.TrendingMoviesBloc(
          gh<_i6.TMDBRepository>(),
          gh<_i3.AppRouter>(),
        ));
    gh.factory<_i8.HomeBloc>(() => _i8.HomeBloc(
          gh<_i6.TMDBRepository>(),
          gh<_i3.AppRouter>(),
        ));
    gh.factory<_i9.MovieDetailsBloc>(() => _i9.MovieDetailsBloc(
          gh<_i6.TMDBRepository>(),
          gh<_i3.AppRouter>(),
        ));
    gh.factory<_i10.PersonDetailsBloc>(() => _i10.PersonDetailsBloc(
          gh<_i6.TMDBRepository>(),
          gh<_i3.AppRouter>(),
        ));
    gh.factory<_i11.PopularMoviesBloc>(() => _i11.PopularMoviesBloc(
          gh<_i6.TMDBRepository>(),
          gh<_i3.AppRouter>(),
        ));
    return this;
  }
}

class _$AppModule extends _i12.AppModule {}
