import 'package:auto_route/auto_route.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmdb_clone_app/domain/repository/tmdb_repository.dart';
import 'package:tmdb_clone_app/feature/popular_movies/bloc/popular_movies_bloc.dart';
import 'package:tmdb_clone_app/models/movie.dart';
import 'package:tmdb_clone_app/models/movies_data.dart';
import 'package:tmdb_clone_app/routes/router.dart';
import 'package:tmdb_clone_app/routes/router.gr.dart';

void main() {
  late MockTMDBRepository mockTMDBRepository;
  late MockAppRouter mockRouter;
  const stubMovieList = [
    Movie(
      id: 1,
      title: "Stub Movie 1",
      genreIds: [1, 2],
      posterPath: "",
      rating: 3.0,
      voteCount: 100,
      genres: ["Comedy", "Action"],
    ),
    Movie(
      id: 3,
      title: "Stub Movie 2",
      genreIds: [2, 3],
      posterPath: "",
      rating: 5.0,
      voteCount: 2000,
      genres: ["Action", "Sports"],
    ),
  ];

  group("PopularMoviesBloc tests", () {
    setUpAll(() {
      registerFallbackValue(const PageRouteInfo(""));
    });
    setUp(() async {
      mockRouter = MockAppRouter();
      mockTMDBRepository = MockTMDBRepository();
      when(() => mockTMDBRepository.getPaginatedPopularMovies(any())).thenAnswer((_) async {
        return const MoviesData(stubMovieList, 2);
      });

      when(() => mockRouter.push(MovieDetailsRoute(movie: stubMovieList[0]))).thenAnswer((invocation) async {
        return null;
      });
    });
    blocTest(
      "emits[PopularMoviesLoadingState] and [PopularMoviesLoadedState] with loaded data when page is opened",
      build: () => PopularMoviesBloc(mockTMDBRepository, mockRouter),
      act: (bloc) => bloc.add(const PopularMoviesEvent.onPageOpened()),
      expect: () => [
        const PopularMoviesState.loading(),
        const PopularMoviesState.loaded(
          canLoadMore: true,
          lastPageLoaded: 1,
          movies: stubMovieList,
        )
      ],
    );
    blocTest(
      'emits[PopularMoviesMoreLoadingState] and [PopularMoviesLoadedState] with loaded data when page is scrolled to te bottom',
      build: () => PopularMoviesBloc(mockTMDBRepository, mockRouter),
      act: (bloc) => bloc
        ..add(const PopularMoviesEvent.onPageOpened())
        ..add(const PopularMoviesEvent.onMoreDataLoading()),
      expect: () => [
        const PopularMoviesState.loading(),
        const PopularMoviesState.loaded(canLoadMore: true, lastPageLoaded: 1, movies: stubMovieList),
        const PopularMoviesState.moreLoading(movies: stubMovieList),
        const PopularMoviesState.loaded(
          canLoadMore: false,
          lastPageLoaded: 2,
          movies: [...stubMovieList, ...stubMovieList],
        )
      ],
    );
    blocTest(
      'opens MovieDetailsPage when MovieEntry is tapped',
      build: () => PopularMoviesBloc(mockTMDBRepository, mockRouter),
      act: (bloc) => bloc.add(PopularMoviesEvent.onMovieTapped(movie: stubMovieList[0])),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as MovieDetailsRoute).args!.movie, stubMovieList[0]);
      },
    );
  });
}

class MockTMDBRepository extends Mock implements TMDBRepository {}

class MockAppRouter extends Mock implements AppRouter {}
