@login

Feature: Website Login
  As a client
  I want to login in the Website
  To visualize my informations

  @unsuccessful_login
  Scenario: Unsuccessful Login
    Given I am in the login page
    When I set the user "angelin@ormuco.com" and password "Wr0n6" and click in the Sign In button
    Then must to show a wrong user or password warning message
