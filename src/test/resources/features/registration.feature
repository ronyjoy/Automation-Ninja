
Feature: DsAlgo portal Registration functionality
Background: User is in the new user registration ninja.squad.cucumber.page

  @tag1
  Scenario: Registration using empty credentials for username, password and password confirmation fields
    Given the user is in the new user registration ninja.squad.cucumber.page
    When the user leaves the Username, Password and Password Confirmation fields empty and clicks Register button        
    Then the user gets a message "Please fill out this field" under the Username tab
    
  @tag2
  Scenario: Registration using invalid username only
    Given the user is in the new user registration ninja.squad.cucumber.page
    When the user enters only an invalid Username  and clicks Register button
    Then the user gets a message "Please fill out the password field"
    
   @tag3
   Scenario: Registration using invalids inputs for username, password and password confirmation fields
    Given the user is in the new user registration ninja.squad.cucumber.page
    When the users enters invalid Username, invalid Password and invalid Password Confirmation and clicks Register button
    Then the user gets  a message "password_mismatch:The two password fields didn’t match"
    
  @tag4
  Scenario: Registration using valid username,and invalid inputs for password and password confirmation fields
    Given the user is in the new user registration ninja.squad.cucumber.page
    When  the users enters valid Username, invalid Password, invalid Password Confirmation  and clicks Register button
    Then  the user gets  a message "password_mismatch:The two password fields didn’t match"
    
  @tag5
  Scenario: Registration using invalid inputs for username and password fields and a valid password confirmation
    Given the user is in the new user registration ninja.squad.cucumber.page
    When the user enters invalid Username, invalid Password, valid Password Confirmation and clicks Register button
    Then the user gets  a message "password_mismatch:The two password fields didn’t match"
    
  @tag6
  Scenario: Registration using valid username and two different inputs in password and password confirmation fields
    Given the user is in the new registration ninja.squad.cucumber.page
    When the user enters valid Username but two different passwords in Password field and Password Confirmation field
    Then the user gets  a message "password_mismatch:The two password fields didn’t match" 
    
  @tag7
  Scenario: Registration using valid inputs for username, password and password confirmation fields 
    Given the user is in the new user registration ninja.squad.cucumber.page
    When the user fills in valid Username, valid Password and valid Password Confirmation as per the criteria and clicks Register button
    Then the user is signed into the home ninja.squad.cucumber.page which displays the message "New Account Created"
    
  Scenario Outline: Registration
    Examples: 
      | username  | password | password confirmation | status
      |           |          |                       |Fail
      | ninja!!!  |          |                       |Fail
      | ninja!!!  |  ninja   |      java             |Fail
      |Ninjasquad |   ninja  |     java              |Fail
      | ninja!!!  | ninja    |    abss@123           |Fail
      |Ninjasquad |abss@123  |  abss@1234            |Fail
      |Ninjasquad |abss@123  |    abss@123           |Success
      
      