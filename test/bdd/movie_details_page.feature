import 'package:tmdb_clone_app/feature/home/presentation/home_page.dart';
import 'package:tmdb_clone_app/feature/movie_details/presentation/movie_details_page.dart';

Feature: MovieDetailsPage
    Scenario: Open MovieDetailsPage and load data successfully
        Given HomePage is opened
        And I see exactly {15} {MovieEntry} widgets
        When I tap on {MovieEntry} widget at index {0}
        And I wait
        Then I see exactly {2} {'Fast X'} texts
        And I see text {'Action'}
        And I see text {'Thriller'}
        And I see text {'Cast & Crew'}
        And I see text {'Videos'}
        And I see text {'Information'}
        And I see text {'Release Date'}
        And I see text {'17 May 2023'}
        And I see exactly {5} {InfoText} widgets
        And I see text {'John Cena'}