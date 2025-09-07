package examples.airline;

import com.intuit.karate.junit5.Karate;

class GetAirlineRunner {

    @Karate.Test
    Karate airlineTest() {
        return Karate.run("GenerateRandomData").relativeTo(getClass());
    }
}
