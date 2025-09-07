Feature: JsonPath concepts in details

  Scenario: Basics
    * def jsonObject =
    """
    { "expensive" : 10 }
    """
#    * match jsonObject.expensive == 11

#    * def expensiveVal = get jsonObject.expensive
#    * print "expensive value ", expensiveVal
#    * match expensiveVal == 10

#    * def expensiveVal = get jsonObject $.expensive
#    * print "expensive value ", expensiveVal
#    * match expensiveVal == 10

#    * def expensiveVal = $jsonObject.expensive
#    * print "expensive value ", expensiveVal
#    * match expensiveVal == 10

#    * def expensiveVal = karate.get('$jsonObject.expensive')
#    * print "expensive value ", expensiveVal
#    * match expensiveVal == 10

    * def expensiveVal = karate.jsonPath(jsonObject, '$.expensive')
    * print "expensive value ", expensiveVal
    * match expensiveVal == 10