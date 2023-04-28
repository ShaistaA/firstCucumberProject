#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template

@login @regression
Feature: Crater app user management
  Users with permissions should be able interact 
  with the application on successful login

  Background: 
    Given As a user, I am on the login page

  @validlogin @smoketest
  Scenario: Successful login
    When I enter valid username and valid password
    And I click on login button
    Then I should be on user profile page

  @invalidlogin
  Scenario: Invalid username login
    When I enter invalid username and valid password
    And I click on login button
    Then I should see an error message 
    And I should not be logged in

  @invalidPasswordLogin
  Scenario: Invalid password login
    When I enter valid username and invalid password
    And I click on login button
    Then I should see an error message
    And I should not be logged in


  @invalidLoginAttempts
  Scenario Outline: Invalid credential login attempt
  When I enter email "<email>" and password "<password>"
  And I click on login button
  Then I should see an error message
  And I should not be logged in
  
  Examples:
  | email                           | password         |
  | entityadmin@primetechschool.com | hellopassword    |
  | entityAd@primetechschool.com    | primetech@school |
  |                                 | Testing123       |
  | nothing@primetechschool.com     |                  |
  
  
  
  
  @validLoginAttempts
  Scenario Outline: valid credential login attempt
  When I enter email "<email>" and password "<password>"
  And I click on login button
  Then I should be on user profile page
  
  Examples:
  | email                           | password         |
  | entityadmin@primetechschool.com | primetech@school |
  | entityadmin@primetechschool.com | primetech@school |
  | entityadmin@primetechschool.com | primetech@school |
  | entityadmin@primetechschool.com | primetech@school |
  | entityadmin@primetechschool.com | primetech@school |
  | entityadmin@primetechschool.com | primetech@school |
  | entityadmin@primetechschool.com | primetech@school |
  | entityadmin@primetechschool.com | primetech@school |