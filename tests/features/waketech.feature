Feature: Access Wake Tech from Wikipedia
  As a user I want to search Wikipedia and get the results for wake Tech

  Scenario: Using Wikipedia to search for wake Tech
    Given the Wikipedia page is open
    When wake tech is entered into the search bar
    Then the results are returned and the wake technical community college page is shown