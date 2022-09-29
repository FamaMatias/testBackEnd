Feature: Service client GET
  As AQ Automation
  I want use tag
  To other person see my article

  Background:
    * url url

  Scenario: Create a new article

    * def responseCreate = read ("classpath:karate.conduitApi/tag/responseTag.json")

    Given path 'tags'
    When method GET
    Then status 200
    And match response == responseCreate

