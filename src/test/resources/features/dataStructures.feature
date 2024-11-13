 Feature: DataStructurepage navigation and action
 Background:
 Given the user is already signed in and is on the home ninja.squad.cucumber.page

  Scenario: Navigate to Time Complexity from Data Structures Introduction
    Given the user is in the Data Structures-Introduction ninja.squad.cucumber.page
    When the user clicks the Time Complexity button
    Then the user Navigated to Time Complexity ninja.squad.cucumber.page

  Scenario: Navigate to Python Editor from Time Complexity ninja.squad.cucumber.page
    Given the user is in the Time Complexity ninja.squad.cucumber.page
    When the user scrolls down and clicks the Try here button
    Then the user Navigated to Python editor ninja.squad.cucumber.page

  Scenario: Attempt to run empty code in Python editor
    Given the user is in the Python editor ninja.squad.cucumber.page
    When the user leaves the editor empty and clicks Run button
    Then no action occurs on the ninja.squad.cucumber.page and no error message is displayed

  Scenario: Run invalid code in Python editor
    Given the user is in the Python editor ninja.squad.cucumber.page
    When the user enters invalid code in the editor and clicks Run button
    Then the user sees an error message

  Scenario: Run valid code in Python editor
    Given the user is in the Python editor ninja.squad.cucumber.page
    When the user enters valid code in the editor and clicks Run button
    Then the user is able to see the output in the console

  Scenario: Navigate to Practice Questions from Time Complexity ninja.squad.cucumber.page
    Given the user is in the Time Complexity ninja.squad.cucumber.page
    When the user clicks the Practice Questions button
    Then the user is in the empty Practice Question ninja.squad.cucumber.page