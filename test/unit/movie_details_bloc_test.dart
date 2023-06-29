import 'package:auto_route/auto_route.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmdb_clone_app/domain/repository/tmdb_repository.dart';
import 'package:tmdb_clone_app/feature/movie_details/bloc/movie_details_bloc.dart';
import 'package:tmdb_clone_app/models/collection.dart';
import 'package:tmdb_clone_app/models/movie.dart';
import 'package:tmdb_clone_app/models/movie_details.dart';
import 'package:tmdb_clone_app/models/person.dart';
import 'package:tmdb_clone_app/models/production_company.dart';
import 'package:tmdb_clone_app/models/spoken_language.dart';
import 'package:tmdb_clone_app/routes/router.dart';
import 'package:tmdb_clone_app/routes/router.gr.dart';

void main() {
  late MockTMDBRepository mockTMDBRepository;
  late MockAppRouter mockAppRouter;

  Movie stubMovie = const Movie(
    id: 1,
    title: "Stub Movie",
    genreIds: [1, 2],
    posterPath: "",
    rating: 4.5,
    voteCount: 200,
    genres: ["Comedy", "Action"],
  );

  MovieDetails stubMovieDetails = const MovieDetails(
    backgroundPosterPath: '',
    collection: Collection(id: 100, name: "Stub Collection", posterPath: "", backgroundPosterPath: ""),
    budget: 100000,
    overview: "Stub Overview",
    productionCompanies: [ProductionCompany(name: "Stub Production Company")],
    releaseDate: '10-05-2020',
    revenue: 500000,
    spokenLanguages: [SpokenLanguage(name: "English")],
    voteAverage: 4.523,
    voteCount: 300,
  );

  final stubMovieCast = <Person>[
    const Person(name: "First Person", photoPath: '', id: 111),
    const Person(name: 'Second Person', photoPath: '', id: 222),
  ];

  setUpAll(() {
    registerFallbackValue(const PageRouteInfo(''));
  });

  setUp(() {
    mockTMDBRepository = MockTMDBRepository();
    mockAppRouter = MockAppRouter();
    when(() => mockTMDBRepository.getMovieDetails(stubMovie.id)).thenAnswer((invocation) async {
      return stubMovieDetails;
    });
    when(() => mockTMDBRepository.getMovieCast(stubMovie.id)).thenAnswer((invocation) async {
      return stubMovieCast;
    });
    when(() => mockTMDBRepository.getMovieTrailers(stubMovie.id)).thenAnswer((invocation) async {
      return [];
    });
    when(() => mockAppRouter.push(PersonDetailsRoute(person: stubMovieCast[0]))).thenAnswer((invocation) async {
      return null;
    });
  });

  group("Movie Details Bloc tests", () {
    blocTest(
      "emits[MovieDetailsLoadingState] and [MovieDetailsLoadedState] with loaded data when page is opened ",
      build: () => MovieDetailsBloc(mockTMDBRepository, mockAppRouter),
      act: (bloc) => bloc.add(MovieDetailsEvent.onPageOpened(movie: stubMovie)),
      expect: () => [
        const MovieDetailsState.loading(),
        MovieDetailsState.loaded(movieDetails: stubMovieDetails, cast: stubMovieCast, trailers: [])
      ],
    );
    blocTest(
      "open PersonDetailsPage when PersonEntry is tapped",
      build: () => MovieDetailsBloc(mockTMDBRepository, mockAppRouter),
      act: (bloc) => bloc.add(MovieDetailsEvent.onPersonTapped(person: stubMovieCast[0])),
      expect: null,
      verify: (bloc) {
        final verifiedData = verify(() => mockAppRouter.push(captureAny()));
        verifiedData.called(1);
        expect((verifiedData.captured.first as PersonDetailsRoute).args!.person, stubMovieCast[0]);
      },
    );
  });
}

class MockTMDBRepository extends Mock implements TMDBRepository {}

class MockAppRouter extends Mock implements AppRouter {}
