Feature: Scenario outline - basics

#  Scenario: basics of data driven
#    * def firstName = 'yahia'
#    * def id = 7
#    * def isManager = false
#    * print 'Details are: ', firstName, id, isManager

#  Scenario Outline: basics of data driven for <fn>
#    * def firstName = '<fn>'
#    * def id = <id>
#    * def isManager = <manager>
#    * print 'Details are: ', firstName, id, isManager
#    Examples:
#      | fn    | id | manager |
#      | yahia | 7  | false   |
#      | joe   | 27 | true    |

  Scenario Outline: basics of data driven - JSON payload
    * def jsonDoc =
    """
      {
        "name" : "<fn>",
        "id" : <id>,
        "isManager" : <manager>
      }
    """
    * print jsonDoc
    * print __row
    * print __num

    Examples:
      | fn    | id | manager |
      | yahia | 7  | false   |
      | joe   | 27 | true    |