import 'package:tmdb_clone_app/feature/movie_details/presentation/movie_details_page.dart';
import 'package:tmdb_clone_app/feature/popular_movies/presentation/popular_movies_page.dart';
import 'package:tmdb_clone_app/feature/home/presentation/home_page.dart';

Feature: HomePage
    Scenario: Load HomePage data successfully
        Given the app is running
        And I wait
        Then I see exactly {2} {'See all >'} texts
        And I see exactly {2} {MoviesCarousel} widgets