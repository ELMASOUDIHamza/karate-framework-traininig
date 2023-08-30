Feature: Testing Put methods
Background:
  * url 'https://jsonplaceholder.typicode.com'

  Scenario: Update user data
    Given path '/posts/1'
    When method PUT
    And def testTitle = "Test title"
    And def jsonData = read('test_json_file.json')
    And def testedPost = jsonData[0]
    And set testedPost.title = testTitle
    And request testedPost
    Then status 200


