#Test case:
#go to amazon.com
#verify that you are on the amazon home page. (verify with title). 
#verify dropdown value is by default "All Departments"
#select department Home & Kitchen, and search coffee mug.
#verify you are on coffee mug search results page (use title).
#verify you are in Home & Kitchen department.

@regression
Feature: Amazon Departments

  
  @amazonTest
  Scenario: As a User, I am is able to select different departments and search
    Given I am on amazon home page
    And the departments dropdown is "All Departments"
    When I select the department "Home & Kitchen"
    And I search "Coffee mug"
    Then I should be on "Coffee mug" search result page
    And the departments dropdown is "Home & Kitchen"
