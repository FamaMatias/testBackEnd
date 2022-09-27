Feature: Service client POST
  As AQ Automation
  I want to create a new user
  To login in the page

  Background:
    * url url

  Scenario: Create a new user

    * def requestBodyUser = read ('classpath:karate.conduitApi/userAndAuthentication/requestCreateUser.json')
    * def responseCreateUser = read ("classpath:karate.conduitApi/userAndAuthentication/responseCreateUser.json")

    Given path 'users'
    And request requestBodyUser
    When method POST
    Then status 200
    And match response == responseCreateUser
    And assert response.username == responseCreateUser.username
    And assert response.email == responseCreateUser.email