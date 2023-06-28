import 'package:tmdb_clone_app/feature/home/presentation/home_page.dart';

Feature: PersonDetailsPage

    Scenario: I am on MovieDetailsPage
        Given MovieDetailsPage is opened
        And I scroll until cast carousel
        And I scroll until last cast member
        When I tap on last cast member
        And I wait
        Then I see exactly {2} {'John Cena'} texts
        And I see {'23 April 1977'} text
        And I see {'Stub Biography'} text
