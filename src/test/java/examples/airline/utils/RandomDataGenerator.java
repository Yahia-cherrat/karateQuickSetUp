package examples.airline.utils;

import net.datafaker.Faker;

public class RandomDataGenerator {
    static Faker faker = new Faker();

    public static String getRandomInteger(int size) {
        return faker.number().digits(size);
    }

    public static String getRandomTitle() {
        return faker.book().title();
    }
}
