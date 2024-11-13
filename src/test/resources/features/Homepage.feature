
Feature: User launch dsalgo application and test Home ninja.squad.cucumber.page

  @tag1
  Scenario: User launch Browser Page of dsgalgo project
   Given The user is in the browserpage
   When The user enters ds algo portal url
   Then user should land on the portal ninja.squad.cucumber.page
   
   @tag2
   Scenario: User is on the dsalgo project ninja.squad.cucumber.page
   Given The user is on the dsalgo portal ninja.squad.cucumber.page
   When The user clicks the get started button
   Then user should land on dsalgo homepage

  @tag3
  Scenario: User launch home ninja.squad.cucumber.page of an dsalgo project
    Given The user is in home ninja.squad.cucumber.page
    When The user enters homepage through URL
    Then Launch homepage successfully
    
  @tag4
  Scenario: User is on Home ninja.squad.cucumber.page and click getstarted link option on home ninja.squad.cucumber.page
    Given The user is on Home ninja.squad.cucumber.page
    When The user clicks on data structure drop down
    Then It should display all links arrays,linkedlist,queue,stack,tree,graph
      
  @tag5
  Scenario: User is on Home ninja.squad.cucumber.page and click on dropdown option without sign in
    Given The user is on Home ninja.squad.cucumber.page
    When The user clicks on array Get started button
    Then It should display alert message Your not logged in
    
     
  @tag6
   Scenario: User is on Home ninja.squad.cucumber.page and click on dropdown option without sign in
    Given The user is on Home ninja.squad.cucumber.page
    When The user clicks on linkedlist Get started button
    Then It should display alert message Your not logged in
    
    
   @tag7
   Scenario: User is on Home ninja.squad.cucumber.page and click on dropdown option without sign in
    Given The user is on Home ninja.squad.cucumber.page
    When The user clicks on stack Get started button
    Then It should display alert message Your not logged in
    
   @tag8
   Scenario: User is on Home ninja.squad.cucumber.page and click on dropdown option without sign in
    Given The user is on Home ninja.squad.cucumber.page
    When The user clicks on Queue Get started button
    Then It should display alert message Your not logged in
    
   @tag9
   Scenario: User is on Home ninja.squad.cucumber.page and click on dropdown option without sign in
    Given The user is on Home ninja.squad.cucumber.page
    When The user clicks on Tree Get started button
    Then It should display alert message Your not logged in
    
   @tag10
   Scenario: User is on Home ninja.squad.cucumber.page and click on dropdown option without sign in
    Given The user is on Home ninja.squad.cucumber.page
    When The user clicks on Graph Get started button
    Then It should display alert message Your not logged in
    
   @tag11
   Scenario: User is on Home ninja.squad.cucumber.page and clicks on register button
    Given The user is on Home ninja.squad.cucumber.page
    When The user clicks on the Register button
    Then User should navigate to the registration ninja.squad.cucumber.page
       
    
    
    
    
    
    
    
     