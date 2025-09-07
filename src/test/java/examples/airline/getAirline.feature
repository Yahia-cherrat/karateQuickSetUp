Feature: Get airline data
  Scenario: Get airline data using id
    Given url 'https://jsonplaceholder.typicode.com'
    And path 'posts'
    And path '13'
    And header X-Request-id = 'Test123'
    When method GET
    Then status 200
    And match responseStatus == 200
    And assert responseStatus == 200
    And print "response status code is as below -" + responseStatus
    And print responseStatus
    And match response == { "userId": 2, "id": 13, "title": "dolorum ut in voluptas mollitia et saepe quo animi", "body": "aut dicta possimus sint mollitia voluptas commodi quo doloremque\niste corrupti reiciendis voluptatem eius rerum\nsit cumque quod eligendi laborum minima\nperferendis recusandae assumenda consectetur porro architecto ipsum ipsam" }
    And match $ == { "userId": 2, "id": 13, "title": "dolorum ut in voluptas mollitia et saepe quo animi", "body": "aut dicta possimus sint mollitia voluptas commodi quo doloremque\niste corrupti reiciendis voluptatem eius rerum\nsit cumque quod eligendi laborum minima\nperferendis recusandae assumenda consectetur porro architecto ipsum ipsam" }
    And match $.userId == 2
    And match header Content-Type == 'application/json; charset=utf-8'
    And match header Content-Type contains 'application/json'
    And match karate.response.header('Content-Type') == 'application/json; charset=utf-8'