Feature: Fuzzy matchers

  Scenario: Fuzzy matchers - 1
    * def joe =
    """
      {
        "id" : "123",
        "name" : 2001
      }
    """
    * match joe.id == '123'
    * match joe.id == '#string'
    * match joe.name == '#number'

    * match joe.id == '#regex [0-9]{3}'
#    the following is the same as the previous
    * match joe.id == '#regex \\d{3}'

  Scenario: Fuzzy matchers - 2
    * def joe =
    """
      {
        "name" : "joe",
        "company" : "amazon"
      }
    """
    * match joe ==
    """
      {
        "name" : "#present",
        "company" : "#ignore"
      }
    """

    Scenario: Fuzzy matchers - 3
      * def jsonRes =
      """
        {
          "id" : 6,
          "name" : "joe doe",
          "isManager" : false,
          "skills" : ["java", "vue"]
        }
      """
      * match jsonRes.skills == '#array'
      * match jsonRes.skills == '#[]'
      * match jsonRes.skills == '#[2]'
      * match jsonRes.skills == '#[] #string'
      * match jsonRes.skills == '#? _[0] == "java"'