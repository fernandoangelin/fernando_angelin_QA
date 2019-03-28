@login

Feature: Website Login
  As a client
  I want to sign in the Website
  To visualize my informations

  @unsuccessful_login
  Scenario: Unsuccessful Login
    Given I am in the login page
    When I set the user and password and click in the Sign In button
    Then must to show a wrong user or password warning message
