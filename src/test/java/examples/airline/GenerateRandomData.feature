Feature: Generate random data using java data faker
  Background:
    * url baseUrl

  Scenario: Create simple JSON object - Data Faker
    Given path 'posts'
    * def fakeData = Java.type("net.datafaker.Faker")
    * def fakeDataObject = new fakeData()
    * def idValue = fakeDataObject.number().numberBetween(0, 100)
    * def titleValue = fakeDataObject.name().title()

    * set jsonObjectPayload
      | path  | value      |
      | id    | idValue    |
      | title | titleValue |
    * print jsonObjectPayload

    And request jsonObjectPayload
    When method POST
    Then status 201

  Scenario: Create simple JSON object - Data Faker - Calling java class
    Given path 'posts'

    * def fakeData = Java.type("examples.airline.utils.RandomDataGenerator")
    * def idValue = fakeData.getRandomInteger(3)
    * def titleValue = fakeData.getRandomTitle()

    * set jsonObjectPayload
      | path  | value      |
      | id    | idValue    |
      | title | titleValue |
    * print jsonObjectPayload

    And request jsonObjectPayload
    When method POST
    Then status 201

#  Scenario: Embedded expressions
#    * def employee = {fName = 'Joe', lName = 'Doe' }
#    * print employee