import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:tmdb_clone_app/di/di_container.config.dart';

final diContainer = GetIt.instance;

@InjectableInit()
void configureDependencies() => diContainer.init();

// void configureDependencies() {
//   diContainer.registerSingleton<Dio>(
//     Dio()
//       ..interceptors.addAll(
//         [
//           AppendHeadersInterceptor(),
//           if (!kReleaseMode) LoggingInterceptor(),
//           if (Platform.environment.containsKey('FLUTTER_TEST')) MockBackendInterceptor(),
//         ],
//       ),
//   );
//   diContainer.registerSingleton<TMDBApi>(TMDBApi(diContainer.get()));
//   diContainer.registerSingleton<TMDBRepository>(TMDBRepository(diContainer.get()));
//   diContainer.registerFactory<PopularMoviesBloc>(() => PopularMoviesBloc(diContainer.get()));
//   diContainer.registerFactory<HomeBloc>(() => HomeBloc(diContainer.get(), diContainer.get()));
//   diContainer.registerFactory<MovieDetailsBloc>(() => MovieDetailsBloc(diContainer.get(), diContainer.get()));
//   diContainer.registerFactory<PersonDetailsBloc>(() => PersonDetailsBloc(diContainer.get(), diContainer.get()));
//   diContainer.registerFactory<TrendingMoviesBloc>(() => TrendingMoviesBloc(diContainer.get()));
//   diContainer.registerSingleton<AppRouter>(AppRouter());
// }