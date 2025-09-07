package examples.airline;

import com.intuit.karate.junit5.Karate;

class GetAirlineRunner {

    @Karate.Test
    public Karate run() {
        return Karate.run("classpath:examples/airline/airline.feature");
    }
}
