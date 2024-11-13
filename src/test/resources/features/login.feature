
Feature: DsAlgo login functionality/validation
Background: the user opens the sign in ninja.squad.cucumber.page

  @tag1 @wip
  Scenario: Login using no username and no password 
    Given I open the login page
    When I enter username "" and password ""
    When I click the login button
    Then I should see error message

  @tag1 @wip
  Scenario: Login using wrong username and wrong password
    Given I open the login page
    When I enter username "test" and password "testrony"
    When I click the login button
    Then I should see the homepage

  @tag1 @wip
  Scenario: Login using correct username and correct password
    Given I open the login page
    When I enter username "Ninjasquad" and password "abss@123"
    When I click the login button
    Then I should see the homepage


   @tag7 @wip
   Scenario: Login using invalid username and invalid password
     Given the user is in the login ninja.squad.cucumber.page
     When the user enters invalid username and invalid password
     Then the user is not logged in

   Scenario Outline: Login
    Examples:
      | Username  | Password | Status  |
      |           |          | Fail    |
      |           | abss@123 | Fail    |
      |Ninjasquad |          | Fail    |
      |Ninjasquad | abss     | Fail    |
      |ninja      | abss@123 | Fail    |
      |ninja      | abss     | Fail    |
      |Ninjasquad | abss@123 | Success |