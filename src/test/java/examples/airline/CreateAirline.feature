Feature: Create a new airline
  Background:
    * url "https://jsonplaceholder.typicode.com"

  Scenario: Using hardcoded JSON payload
    Given path 'posts'

    * def requestPayload = {}
    * requestPayload.id = 102
    * requestPayload.title = "foo"
    * requestPayload.body = "bar"
    * requestPayload.userId = 1

    And request requestPayload

#    And request
#    """
#      {
#        id: 101,
#        title: 'foo',
#        body: 'bar',
#        userId: 1
#      }
#    """
    When method POST
    Then status 201

  Scenario: Create an airline with json payload from external source
    Given path 'posts'
    * def requestPayload = read('payloads/CreateAirlinePayload.json')
    * print requestPayload
    And request requestPayload
    When method POST
    Then status 201