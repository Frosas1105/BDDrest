Feature: DuckDuckGo search for presidents
  As a user of DuckDuckGo I want to get the results
  for my search of presidents of the United States.

  Scenario Outline: Using DuckDuckGo to search for presidents of the united states
    Given the DuckDuckGo is queried for presidents of the united states
    Then the response contains "<presidents>"
    Examples: Presidents last names
      | presidents |
      | Washington |
      | Adams      |
      | Jefferson  |
      | Madison    |
      | Monroe     |
      | Adams      |
      | Jackson    |
      | Buren      |
      | Harrison   |
      | Tyler      |
      | Polk       |
      | Taylor     |
      | Fillmore   |
      | Pierce     |
      | Buchanan   |
      | Lincoln    |
      | Johnson    |
      | Grant      |
      | Hayes      |
      | Garfield   |
      | Arthur     |
      | Cleveland  |
      | Harrison   |
      | Cleveland  |
      | McKinley   |
      | Roosevelt  |
      | Taft       |
      | Wilson     |
      | Harding    |
      | Coolidge   |
      | Hoover     |
      | Roosevelt  |
      | Truman     |
      | Eisenhower |
      | Kennedy    |
      | Johnson    |
      | Nixon      |
      | Ford       |
      | Carter     |
      | Reagan     |
      | Bush       |
      | Obama      |
      | Trump      |
      | Biden      |



