Feature: Testing Delete requests

  Background:
    * url 'https://jsonplaceholder.typicode.com'

  Scenario: Delete post by id
    * path '/posts/1'
    * method DELETE
    * status 200
    * print response