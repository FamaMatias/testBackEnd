Feature: Service client POST
  As AQ Automation
  I want to create a new user
  To login in the page

  Background:
    * url url

  Scenario: Create a new user

    * def requestBody = read ('classpath:karate.conduitApi/test/requestCreateUser.json')
    * def responseCreate = read ("classpath:karate.conduitApi/test/responseCreateUser.json")

    Given path 'users'
    And request requestBody
    When method POST
    Then status 200
    And match response == responseCreate
    And assert response.username == responseCreate.username
    And assert response.email == responseCreate.email
    And assert response.token == responseCreate.token

    * def VarToken = response.token

    Scenario: Create a new article

      * def requestBody = read ('classpath:karate.conduitApi/test/requestArticle.json')
      * def responseCreate = read ("classpath:karate.conduitApi/test/responseArticle.json")

      Given header Authorization = 'Bearer '+ Vartoken
      Given path 'articles'
      And request requestBody
      When method POST
      Then status 200
      And match response == responseCreate
      And assert response.title == responseCreate.title
      And assert response.body == responseCreate.body

      Scenario: Create a new article

        * def responseCreate = read ("classpath:karate.conduitApi/test/responseTag.json")

        Given path 'tags'
        When method GET
        Then status 200
        And match response == responseCreate

