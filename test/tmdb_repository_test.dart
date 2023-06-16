import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tmdb_clone_app/domain/api/tmdb_api.dart';
import 'package:tmdb_clone_app/domain/repository/tmdb_repository.dart';
import 'package:tmdb_clone_app/models/api_response.dart';
import 'package:tmdb_clone_app/models/api_response_cast.dart';
import 'package:tmdb_clone_app/models/api_response_genres.dart';
import 'package:tmdb_clone_app/models/api_response_movie_video.dart';
import 'package:tmdb_clone_app/models/movie.dart';
import 'package:tmdb_clone_app/models/movie_details.dart';
import 'package:tmdb_clone_app/models/movie_genre.dart';
import 'package:tmdb_clone_app/models/movie_video.dart';
import 'package:tmdb_clone_app/models/person.dart';
import 'package:tmdb_clone_app/models/person_details.dart';
import 'package:tmdb_clone_app/models/production_company.dart';
import 'package:tmdb_clone_app/models/spoken_language.dart';

void main() {
  group("Repository test", () {
    const stubMovieList = [
      Movie(id: 1, title: "Stub Movie 1", genreIds: [1, 2], posterPath: "", rating: 3.0, voteCount: 100),
      Movie(id: 3, title: "Stub Movie 2", genreIds: [2, 3], posterPath: "", rating: 5.0, voteCount: 2000),
    ];

    const stubMovieGenres = [
      MovieGenre(id: 1, name: "Comedy"),
      MovieGenre(id: 2, name: "Action"),
      MovieGenre(id: 3, name: "Sports")
    ];

    const stubPersonDetails = PersonDetails(
      knownFor: "Acting",
      birthPlace: "New York",
      birthday: "12-05-2022",
      deathday: null,
      biography: "Stub Biography",
    );

    const stubMovieDetails = MovieDetails(
      backgroundPosterPath: "",
      collection: null,
      budget: 1000000,
      overview: "Stub Overview",
      productionCompanies: [ProductionCompany(name: "Stub Company")],
      releaseDate: "12-12-2000",
      revenue: 5000000,
      spokenLanguages: [SpokenLanguage(name: "English")],
      voteAverage: 4.202,
      voteCount: 2500,
    );

    const stubMovieCast = [
      Person(name: "Person One", photoPath: "", id: 1),
      Person(name: "Person Two", photoPath: "", id: 2),
    ];

    const stubMovieTrailers = [
      MovieVideo(key: "Stub Key", site: "Youtube"),
    ];

    late MockTMDBApi mockApi;
    late TMDBRepository subject;
    setUp(() {
      mockApi = MockTMDBApi();
      subject = TMDBRepository(mockApi);
    });
    test("Get paginated popular movies", () async {
      when(() => mockApi.getPopularMovies(1)).thenAnswer((_) async {
        return ApiResponse(
          page: 1,
          results: [stubMovieList[0]],
          totalPages: 2,
        );
      });
      when(() => mockApi.getMovieGenres()).thenAnswer((_) async {
        return const ApiResponseGenres(genres: stubMovieGenres);
      });
      final result = await subject.getPaginatedPopularMovies(1);
      final expectedMovies = [
        stubMovieList[0].copyWith(genres: ["Comedy", "Action"])
      ];
      expect(result.totalPages, 2);
      expect(result.movies, expectedMovies);
    });
    test("Get paginated trending movies", () async {
      when(() => mockApi.getTrendingMovies(1)).thenAnswer((_) async {
        return const ApiResponse(
          page: 1,
          results: stubMovieList,
          totalPages: 1000,
        );
      });
      when(() => mockApi.getMovieGenres()).thenAnswer((_) async {
        return const ApiResponseGenres(genres: stubMovieGenres);
      });
      final result = await subject.getPaginatedTrendingMovies(1);
      final expectedMovies = [
        stubMovieList[0].copyWith(genres: ["Comedy", "Action"]),
        stubMovieList[1].copyWith(genres: ["Action", "Sports"])
      ];
      expect(result.totalPages, 1000);
      expect(result.movies, expectedMovies);
    });
    test("Get person details", () async {
      when(() => mockApi.getPersonDetails(1)).thenAnswer((_) async {
        return stubPersonDetails;
      });
      final result = await subject.getPersonDetails(1);
      expect(result, stubPersonDetails);
    });
    test("Get movie details", () async {
      when(() => mockApi.getMovieDetails(1)).thenAnswer((_) async {
        return stubMovieDetails;
      });
      final result = await subject.getMovieDetails(1);
      expect(result, stubMovieDetails);
    });
    test("Get movie cast", () async {
      when(() => mockApi.getMovieCast(1)).thenAnswer((_) async {
        return const ApiResponseCast(cast: stubMovieCast);
      });
      final result = await subject.getMovieCast(1);
      expect(result, stubMovieCast);
    });
    test("Get movie trailers", () async {
      when(() => mockApi.getMovieTrailers(1)).thenAnswer((_) async {
        return const ApiResponseMovieVideo(results: stubMovieTrailers);
      });
      final result = await subject.getMovieTrailers(1);
      expect(result, stubMovieTrailers);
    });
  });
}

class MockTMDBApi extends Mock implements TMDBApi {}
