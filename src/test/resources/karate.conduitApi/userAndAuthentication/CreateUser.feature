Feature: Service client POST
  As AQ Automation
  I want to create a new user
  To login in the page

  Background:
    * url url

  Scenario: Create a new user

    * def requestBody = read ('classpath:karate.conduitApi/userAndAuthentication/requestCreateUser.json')
    * def responseCreate = read ("classpath:karate.conduitApi/userAndAuthentication/responseCreateUser.json")

    Given path 'users'
    And request requestBody
    When method POST
    Then status 200
    And match response == responseCreate
    And assert response.username == responseCreate.username
    And assert response.email == responseCreate.email
    And assert response.token == responseCreate.token

    * def VarToken = response.token

