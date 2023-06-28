
Feature: PopularMoviesPage

    Scenario: PopularMoviesPage pagination test
        Given HomePage is opened
        When I tap on {'See all >'} text at index {0}
        And I wait
        And I scroll to bottom of page
        And I wait
        And I scroll to bottom of page
        Then I see {'The Little Mermaid'} text