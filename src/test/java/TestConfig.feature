Feature:Testing configuration file
 Background:
   * url 'https://jsonplaceholder.typicode.com'
  Scenario: Get data from config file
    Given print config.fullName
    #When method GET
    #Then print fullName