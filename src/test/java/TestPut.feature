Feature: Testing Put methods
Background:
  * url 'https://jsonplaceholder.typicode.com'

  Scenario: Update user data
    * path '/posts/1'
    * method PUT
    * def testTitle = "Test title"
    * def jsonData = read('test_json_file.json')
    * def testedPost = jsonData[0]
    * set testedPost.title = testTitle
    * request testedPost
    * status 200


