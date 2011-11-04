Feature: Service state
In order to verify that Identity is running properly
As a curious person
I want to retrieve global information about the Identity microservice

Scenario: Get basic information
  Given I am on the home page
  Then I should see "Service identifier:"
  And I should see "Supported shoulder spaces:"
