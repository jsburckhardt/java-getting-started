package com.example;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class AppTest {

    @Test
    public void testWelcomeMessage() {
        String expectedMessage = "Welcome to the Java Getting Started App!";
        assertEquals(expectedMessage, App.getWelcomeMessage());
    }
}
