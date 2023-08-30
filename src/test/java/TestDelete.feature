Feature: Testing Delete requests

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: Delete post by id
    Given path '/posts/1'
    When method DELETE
    Then status 200
    And print response