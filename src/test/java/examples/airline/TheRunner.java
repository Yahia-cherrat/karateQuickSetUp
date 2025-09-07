package examples.airline;

import com.intuit.karate.junit5.Karate;

class TheRunner {

    @Karate.Test
//    Karate airlineTest() {
//        return Karate.run("JSONPath").relativeTo(getClass());
//    }
    Karate airlineTest() {
        return Karate.run("CreateAirlineScenarioOutline").relativeTo(getClass());
    }
}
