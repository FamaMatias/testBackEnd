Feature: Service client POST
  As AQ Automation
  I want to create an Article
  To post on my profile

  Background:
    * url url

  Scenario: Create a new article

    * def requestBody = read ('classpath:karate.conduitApi/article/requestArticle.json')
    * def responseCreate = read ("classpath:karate.conduitApi/article/responseArticle.json")

    Given header Authorization = 'Bearer '+ token
    Given path 'articles'
    And request requestBody
    When method POST
    Then status 200
    And match response == responseCreate
    And assert response.title == responseCreate.title
    And assert response.body == responseCreate.body