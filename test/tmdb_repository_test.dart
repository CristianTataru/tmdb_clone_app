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

    const personDetails = PersonDetails(
      knownFor: "Acting",
      birthPlace: "New York",
      birthday: "12-05-2022",
      deathday: null,
      biography: "Stub Biography",
    );

    const movieDetails = MovieDetails(
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

    const movieCast = [
      Person(name: "Person One", photoPath: "", id: 1),
      Person(name: "Person Two", photoPath: "", id: 2),
    ];

    const movieTrailers = [MovieVideo(key: "Stub Key", site: "Youtube")];

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
      final data = await subject.getPaginatedPopularMovies(1);
      expect(data.movies.length, 1);
      expect(data.movies.first.genres.first, 'Comedy');
      expect(data.movies.first.genres.length, 2);
      expect(data.totalPages, 2);
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
      final data = await subject.getPaginatedTrendingMovies(1);
      expect(data.movies.length, 2);
      expect(data.movies.last.genres.first, "Action");
      expect(data.movies.first.genres.length, 2);
      expect(data.totalPages, 1000);
    });
    test("Get person details", () async {
      when(() => mockApi.getPersonDetails(1)).thenAnswer((_) async {
        return personDetails;
      });
      final data = await mockApi.getPersonDetails(1);
      expect(data.deathday, null);
      expect(data.knownFor, "Acting");
      expect(data.biography, "Stub Biography");
    });
    test("Get movie details", () async {
      when(() => mockApi.getMovieDetails(1)).thenAnswer((_) async {
        return movieDetails;
      });
      final data = await mockApi.getMovieDetails(1);
      expect(data.budget, 1000000);
      expect(data.revenue, 5000000);
      expect(data.overview, "Stub Overview");
    });
    test("Get movie cast", () async {
      when(() => mockApi.getMovieCast(1)).thenAnswer((_) async {
        return const ApiResponseCast(cast: movieCast);
      });
      final data = await mockApi.getMovieCast(1);
      expect(data.cast.length, 2);
      expect(data.cast.first.name, "Person One");
      expect(data.cast.last.id, 2);
    });
    test("Get movie trailers", () async {
      when(() => mockApi.getMovieTrailers(1)).thenAnswer((_) async {
        return const ApiResponseMovieVideo(results: movieTrailers);
      });
      final data = await mockApi.getMovieTrailers(1);
      expect(data.results.length, 1);
      expect(data.results.first.site, "Youtube");
    });
  });
}

class MockTMDBApi extends Mock implements TMDBApi {}
